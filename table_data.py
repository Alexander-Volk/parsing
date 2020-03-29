import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('csv_doc/cmc.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow(
            [
                data['name'],
                data['url'],
                data['price'],
            ]
        )


def refined(string):
    if ',' in string:
        string = string.replace(',', '')
    return string[1:]


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    trs = soup.find('tbody').find_all('tr')
    for tr in trs:
        name = tr.find('td', class_='cmc-table__cell--sort-by__name').text
        url = f"https://coinmarketcap.com{tr.find('td', class_='cmc-table__cell--sort-by__name').find('a').get('href')}"
        price = refined(tr.find('td', class_='cmc-table__cell--sort-by__price').text)
        data = {
            'name': name,
            'url': url,
            'price': float(price),
        }
        write_csv(data)


def main():
    url = 'https://coinmarketcap.com/'
    get_page_data(get_html(url))


if __name__ == '__main__':
    main()
