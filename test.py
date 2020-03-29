import requests
import time
import csv
from bs4 import BeautifulSoup
from functools import wraps
from multiprocessing import Pool
from random import choice
from peewee import *

db = PostgresqlDatabase(database='testpars', user='postgres', password='123', host='localhost')


class Movie(Model):
    name = CharField()
    url = TextField()
    rating = CharField()
    year = CharField()
    country = CharField()
    genre = CharField()
    director = CharField()
    duration = CharField()

    class Meta:
        database = db


proxy_ = [
    {'schema': 'http', 'address': '138.197.133.199:80'},
    {'schema': 'http', 'address': '165.227.84.169:80'},
    {'schema': 'http', 'address': '176.120.37.82:59365'},
    {'schema': 'http', 'address': '96.87.184.101:43705'},
    {'schema': 'http', 'address': '65.52.158.214:80'},
    {'schema': 'http', 'address': '118.97.100.83:35220'},
    {'schema': 'http', 'address': '185.229.236.169:8080'},
]


def get_html(url):
    p = choice(proxy_)
    proxy = {p['schema']: p['address']}
    response = requests.get(url, proxies=proxy, timeout=5)
    return response.text


def write_csv(data):
    with open('csv_doc/kinokrad.csv', 'a') as file:
        order = ['name', 'url', 'rating', 'year', 'country', 'genre', 'director', 'duration']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_box_data(soup):
    movie_info = soup.find_all('div', class_='godshort')
    values = []
    keys = ['year', 'country', 'genre', 'director', 'duration']

    for info in movie_info:
        values.append(info.find('span', class_='orange').text.strip(' ,.'))
    data = dict(zip(keys, values))
    data['duration'] = data['duration'].strip(' мин')
    for key in data:
        if data[key] == '-':
            data[key] = ''
    return data


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    cards = soup.find_all('div', class_='shorbox')
    for card in cards:
        poster = card.find('div', class_='postertitle')
        data_box = get_box_data(card.find('div', class_='shortboxh'))
        name = poster.find('a').text
        url = poster.find('a').get('href')
        rating = poster.find('li', class_='current-rating').text

        data = {
            'name': name,
            'url': url,
            'rating': rating,
        }
        data.update(data_box)
        write_csv(data)


def make_all(url):
    return get_page_data(get_html(url))


def lead_time(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        start = time.time()
        func(*args, **kwargs)
        print(time.time() - start)

    return wrapper


@lead_time
def main():
    url = 'https://kinokrad.co/serial2/page/{}/'
    urls = [url.format(str(page)) for page in range(1, 370)]

    with Pool(25) as p:
        p.map(make_all, urls)


@lead_time
def write_db():
    db.connect()
    db.create_tables([Movie])

    with open('csv_doc/kinokrad.csv') as file:
        order = ['name', 'url', 'rating', 'year', 'country', 'genre', 'director', 'duration']
        reader = csv.DictReader(file, fieldnames=order)
        movies = list(reader)

        with db.atomic():
            for index in range(0, len(movies), 100):
                Movie.insert_many(movies[index:index + 200]).execute()

        # with db.atomic():
        #     for row in movies:
        #         Movie.create(**row)


if __name__ == '__main__':
    main()
    write_db()
