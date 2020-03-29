# создается несколько экземпляров скрипта, и каждый экземпляр выполняет свою часть работ по парсингу общих данных
# не подходит для всех сайтов
# замедление парсинга можно делать с помощью time.slip()
import requests
import csv
from multiprocessing import Pool


def get_text(url):
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('csv_doc/multi_pars.csv', 'a') as file:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_page_data(text):
    data = text.strip().split('\n')[1:]
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


def make_all(url):
    return get_page_data(get_text(url))


def main():  # 6933 страницы
    url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'
    urls = [url.format(str(i)) for i in range(1, 7030)]

    with Pool(50) as p:
        p.map(make_all, urls)


if __name__ == '__main__':
    main()
