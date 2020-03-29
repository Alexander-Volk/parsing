import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    return response.text


def get_section(html):
    soup = BeautifulSoup(html, 'lxml')
    section = soup.find_all('section')[3]
    return section


def refined(string):  # 1,728 total ratings
    rating = string.split(' ')[0]
    return rating.replace(',', '')  # 1728


def write_csv(data):
    with open('csv_doc/plugins.csv', 'a') as file:
        writer = csv.writer(file)

        writer.writerow(
            (
                data['name'],
                data['url'],
                data['reviews'],
            )
        )


def get_plugins_data(section):
    plugins = section.find_all('article')

    for plugin in plugins:
        name = plugin.find('h2').text
        url = plugin.find('h2').find('a').get('href')
        rating = refined(plugin.find('span', class_='rating-count').find('a').text)

        data = {
            'name': name,
            'url': url,
            'reviews': rating,
        }
        write_csv(data)


# def


def main():
    url = 'https://wordpress.org/plugins/'
    get_plugins_data(get_section(get_html(url)))


if __name__ == '__main__':
    main()
