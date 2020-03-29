# для того чтобы обрабатывать ajax запросы, нужно парсить ответ сервера в виде простых текстовых фалов

# медлинный парсинг одни процесом
import csv

import requests


def get_text(url):  # сервер отдает НЕ html а простой текст
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('csv_doc/ajax_liveinternet.csv', 'a') as file:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def main():
    for i in range(0, 6579):
        url = f'https://www.liveinternet.ru/rating/ru//today.tsv?page={i}'

        response = get_text(url)
        data = response.strip().split('\n')[1:]

        for row in data:
            columns = row.strip().split('\t')[:-1]
            data = {
                'name': columns[0],
                'url': columns[1],
                'description': columns[2],
                'traffic': columns[3],
                'percent': columns[4],
            }

            write_csv(data)


if __name__ == '__main__':
    main()
