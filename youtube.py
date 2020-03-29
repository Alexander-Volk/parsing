import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r


def write_csv(data):
    with open('csv_doc/videos.csv', 'a') as f:
        order = ['name', 'url']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def get_page_data(response):
    if 'html' in response.headers['Content-Type']:
        html = response.text
    else:
        html = response.json()['content_html']

    soup = BeautifulSoup(html, 'lxml')
    items = soup.find_all('h3', class_='yt-lockup-title')

    for item in items:
        name = item.text.strip()
        url = item.find('a').get('href')

        data = {'name': name, 'url': url}
        write_csv(data)


def get_next(response):
    if 'html' in response.headers['Content-Type']:
        html = response.text
    else:
        html = response.json()['load_more_widget_html']

    soup = BeautifulSoup(html, 'lxml')
    try:
        url = f"https://www.youtube.com{soup.find('button', class_='load-more-button').get('data-uix-load-more-href')}"
    except:
        url = ''

    return url


def main():
    # url = 'https://www.youtube.com/browse_ajax?ctoken=4qmFsgI0EhhVQ1V1c3BZblNRSGlhY19BS2VYcDdFdGcaGEVnW' \
    #       '\jJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D&continuation=4qmFsgI0EhhVQ1V1c3BZblNRSGlhY19BS2VYcDdFdG' \
    #       'caGEVnWjJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D&itct=CDIQybcCIhMIn6GI08aI6AIVAc9VCh0jrgTb'
    url = 'https://www.youtube.com/channel/UCUuspYnSQHiac_AKeXp7Etg/videos'
    # get_page_data(get_html(url))

    while True:
        response = get_html(url)
        get_page_data(response)

        url = get_next(response)

        if not url:
            break


if __name__ == '__main__':
    main()
