import requests
from bs4 import BeautifulSoup
import csv
import re


def get_html(url):
    response = requests.get(url)
    if response.ok:
        return response.text
    print(response.status_code)


def write_csv(data):
    with open('dop_files/coin_market.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow(
            (
                data['name'],
                data['url'],
                data['price'],
            )
        )


def refined(string):  # $8,094.66
    if ',' in string:
        string = string.replace(',', '')
    return string[1:]


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    trs = soup.find('tbody').find_all('tr')
    for tr in trs:
        tds = tr.find_all('td')

        try:
            name = tds[1].find('a').text.strip()
        except:
            name = ''

        try:
            url = f"https://coinmarketcap.com{tds[1].find('a').get('href')}"
        except:
            url = ''

        try:
            price = refined(tds[3].find('a').text).strip()
        except:
            price = ''

        data = {
            'name': name,
            'url': url,
            'price': price,
        }
        write_csv(data)


def main():
    url = 'https://coinmarketcap.com/'

    while True:
        get_page_data(get_html(url))

        soup = BeautifulSoup(get_html(url), 'lxml')

        try:
            pattern = 'Next'
            url = f"https://coinmarketcap.com" \
                  f"{soup.find('div', class_='cmc-button-group').find('a', text=re.compile(pattern)).get('href')}"
        except:
            break


if __name__ == '__main__':
    main()
