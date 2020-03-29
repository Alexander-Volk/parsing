import requests
import csv
from bs4 import BeautifulSoup


def write_csv(data):
    with open('csv_doc/utoipa.csv', 'a') as file:
        order = ['name', 'url']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


# нужно подстраивать парсер под вид получаемоего объекта ( html or json)
def get_html(url):
    return requests.get(url)


def get_headers_data(response):  # у ответа есть словарь headers, который содержит Content-Type
    if 'html' in response.headers['Content-Type']:  # выясняем что нам возвращается (html or json)
        return response.text
    return response.json()['content_html']


def get_page_data(head_data):
    soup = BeautifulSoup(head_data, 'lxml')
    items = soup.find_all('h3', class_='yt-lockup-title')
    for item in items:
        name = item.text.strip()
        url = f"https://youtube.com{item.find('a').get('href')}"

        data = {
            'name': name,
            'url': url,
        }

        write_csv(data)


# т.к. нельзя как раньше обычной подстановкой менять урлы, получаем следующую страницу c помощью парсинга через кнопку
def get_next(response):
    if 'html' in response.headers['Content-Type']:
        html = response.text
    else:
        html = response.json()['load_more_widget_html']  # данный ключ указывает на следующую страницу

    soup = BeautifulSoup(html, 'lxml')
    try:
         url = f"https://www.youtube.com/{soup.find('button', class_='load-more-button').get('data-uix-load-more-href')}"
    except:
        url = ''

    return url


def main():  #
    # url = 'https://youtube.com/browse_ajax?action_continuation=1&direct_render' \
    #       '=1&continuation=4qmFsgI0EhhVQzhNNVlWV1Fhbl8zRWxtLVVSZWh6OXcaGEVnWjJhV1JsYjNNZ0FEZ0JlZ0V5dUFFQQ%253D%253D'
    url = 'https://www.youtube.com/channel/UC8M5YVWQan_3Elm-URehz9w/videos'
    while True:  # парсим все страницы
        response = get_html(url)
        get_page_data(get_headers_data(response))

        # переходим на новую страницу
        url = get_next(response)
        if url:
            continue
        break


if __name__ == '__main__':
    main()
