import csv

import requests
from bs4 import BeautifulSoup
from random import choice

proxy_ = [
    {'schema': 'http', 'address': '138.197.133.199:80'},
    {'schema': 'http', 'address': '165.227.84.169:80'},
    {'schema': 'http', 'address': '176.120.37.82:59365'},
    {'schema': 'http', 'address': '96.87.184.101:43705'},
    {'schema': 'http', 'address': '65.52.158.214:80'},
    {'schema': 'http', 'address': '118.97.100.83:35220'},
    {'schema': 'http', 'address': '185.229.236.169:8080'},
]


# def get_proxy():
#     html = requests.get('https://free-proxy-list.net/').text
#     proxies = []
#     soup = BeautifulSoup(html, 'lxml')
#
#     trs = soup.find('table', id='proxylisttable').find_all('tr')[1:11]
#     for tr in trs:  # получить 0 1 6
#         tds = tr.find_all('td')
#         ip = tds[0].text.strip()
#         port = tds[1].text.strip()
#         schema = 'https' if 'yes' in tds[6].text.strip() else 'http'
#         proxy = {'schema': schema, 'address': f'{ip}:{port}'}
#         proxies.append(proxy)
#     print(proxies)
#     return choice(proxies)


def get_html(url):
    p = choice(
        proxy_)  # для того чтобы get использовал прокси, нужно передать ему словарь здесь {'schema': '', 'address': ''}
    proxy = {p['schema']: p['address']}  # {schema: address}
    response = requests.get(url, proxies=proxy, timeout=5)
    return response.text  # получаем наш ip


def write_csv(data):
    with open('csv_doc/kinokrad.csv', 'a') as file:
        order = ['name', 'url', 'rating']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    cards = soup.find_all('div', class_='shorbox')
    for card in cards:
        poster = card.find('div', class_='postertitle')

        name = poster.find('a').text
        url = poster.find('a').get('href')
        rating = poster.find('li', class_='current-rating').text

        data = {
            'name': name,
            'url': url,
            'rating': rating,
        }
        write_csv(data)


def main():
    for page in range(1, 360):
        url = f'https://kinokrad.co/1-filmy-2020-novinki/page/{page}/'
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
