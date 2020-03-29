import requests
import csv
from bs4 import BeautifulSoup
from multiprocessing import Pool


def get_html(url):
    user_agent = {
        'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) Apple'
                      'WebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'}
    response = requests.get(url, headers=user_agent)  # headers указывается при закрытом доступе 403
    return response.text


def write_csv(data):
    with open('csv_doc/testimonials.csv', 'a') as file:
        order = ['author', 'since']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


# Когда мы не знаем, сколько данных будет парстися - используется while True


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    ts = soup.find('div', class_='testimonial-container').find_all('article')
    return ts  # [] or [a, b ,c]


def get_page_data(ts):
    for t in ts:
        try:
            since = t.find('p', class_='traxer-since').text.strip()
        except:
            since = ''
        try:
            author = t.find('p', class_='testimonial-author').text.strip()
        except:
            author = ''
        data = {'author': author, 'since': since}

        write_csv(data)


def main():
    # 1. Получение контейнера с отзывами и списка отзывов
    # 2. Если список есть, то парсим отзывы
    # 3. Если список пустой - цикл прерывается
    while True:
        page = 1
        if page == 1:
            url = 'https://catertrax.com/why-catertrax/traxers/?themify_builder_infinite_scroll=yes'
        else:
            url = f'https://catertrax.com/why-catertrax/traxers/page/{page}/?themify_builder_infinite_scroll=yes'

        articles = get_articles(get_html(url))  # [] or [a, b ,c]

        if articles:
            get_page_data(articles)
            page += 1
        else:
            break


if __name__ == '__main__':
    main()
