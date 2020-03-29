import requests
from bs4 import BeautifulSoup
from peewee import *

BASE_URL = 'https://tproger.ru'
db = PostgresqlDatabase(database='mydb', user='volk', password='123', host='localhost')


class Test(Model):
    title = CharField()
    img = CharField()
    link = CharField()

    class Meta:
        database = db


def get_html(url):
    r = requests.get(url)
    return r.content  # content вернет ответ в байтах


def write_db(list_data):
    db.connect()
    db.create_tables([Test])

    with db.atomic():
        for row in list_data:
            print(row)
            Test.create(**row)


def get_data(url):
    list_data = []
    soup = BeautifulSoup(get_html(url), 'lxml')
    res = soup.find('div', id='main_columns').find_all('article')

    for post in res:
        # title = post.find('div', class_='post-title').find('h2', class_='entry-title').text
        try:
            # img = post.find('img').get('data-src')
            img = post.img.get('data-src')
            if not img:
                img = ''
        except AttributeError:
            img = ''
        data = {
            'title': post.h2.text,
            'img': img,
            'link': post.a['href'],
        }
        list_data.append(data)
    # print(list_data)
    return list_data


write_db(get_data(BASE_URL))
