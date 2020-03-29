import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    if response.ok:
        return response.text
    print(response.status_code)


def refine_color(string):  # Цветов:7 -> ['Цветов:', '7']
    return string.split(':')[-1]


def write_scv(data):
    with open('csv_doc/reebok.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow(
            (
                data['name'],
                data['url'],
                data['category'],
                data['color']
            )
        )


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    list_items = soup.find_all('div', class_='gl-product-card__details')
    for item in list_items:
        name = item.find('div', class_='gl-product-card__name').text
        url = f'https://www.reebok.ru{item.find("a").get("href")}'
        category = item.find('div', class_='gl-product-card__category').text.replace(' ', ', ')
        try:
            num_colors = item.find('div', class_='gl-product-card__color').text
            color = refine_color(num_colors)
        except AttributeError:
            color = ''

        data = {
            'name': name[10:],
            'url': url,
            'category': category,
            'color': color,
        }

        write_scv(data)


def main():
    for page in range(0, 241, 48):
        url = f'https://www.reebok.ru/muzhchiny-obuv?start={page}'
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
