import requests
from urllib.parse import quote  # принимает, что преобразовывать и как преобразовывать
from bs4 import BeautifulSoup
from datetime import datetime
import tkinter
import os

E_SITE = 'cp1251'  # кодировка сайта
i_count = 0  # глобальная переменная


def get_html(url, coding):
    headers = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 ' \
              '(KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'
    # auth=('login', 'password')
    response = requests.get(url, auth=('Vol4onok', 'R7nrGRQGKfsLwvd'), headers={'User-Agent': headers})
    response.encoding = coding  # передаем кодировку сайта для правильного отображения контента
    return response.text


def get_page(html):
    soup = BeautifulSoup(html, 'lxml')
    img_count = soup.find('div', class_='header-text').find('h2').text

    try:
        n_pages = soup.find('div', class_='navigation').find_all('a')[-2].text  # количество страниц в пагинации
        return int(n_pages), img_count
    except AttributeError:
        return 1, img_count


def get_window_size():
    r = tkinter.Tk()
    return r.winfo_screenwidth(), r.winfo_screenheight()  # возвращаем разрешение экрана


def save_file(url, name):
    r = requests.get(url, stream=True)  # stream - позволяет отложить загрузку ответа
    if os.path.exists('img'):  # os.path.exists(path) - возвращает True, если path указывает на существующий путь
        # или дескриптор открытого файла.
        with open(name, 'bw') as file:
            file.write(r.content)
    else:
        os.mkdir('img')
        with open(name, 'bw') as file:
            file.write(r.content)


def parsing(html, obj, win_size_w, win_size_h):
    global i_count
    soup = BeautifulSoup(html, 'lxml')
    urls = soup.find('div', id='dle-content').find_all('a', class_='screen-link')

    for inc, url in enumerate(urls, start=1):  # inc - счетчик, чтобы видеть сколько картинок сохранено
        soup = BeautifulSoup(get_html(url.get('href'), E_SITE), 'lxml')  # страница с картинокой
        dow_links = soup.find('div', class_='llink').find_all('a')

        for link in dow_links:
            size_w = int(link.get('href').split('/')[-2].split('x')[0])
            size_h = int(link.get('href').split('/')[-2].split('x')[-1])
            if win_size_w == size_w and win_size_h == size_h:
                suitable_url = link.get('href')  # сслыки с нужным разрешением
            else:
                continue

            soup = BeautifulSoup(get_html(suitable_url, E_SITE), 'lxml')  # страница загрузки картинки
            image_url = soup.find('img', id='img').get('src')
            name = f"img/{obj}-{image_url.split('-')[-1]}"
            save_file(image_url, name)
            print(f"|{inc:^{4}}|{name.split('/')[-1]:^{33}}|{'Загружен':^{10}}|")
            i_count += 1
    return i_count


def main(list_obj):
    start = datetime.now()
    win_width, win_height = get_window_size()

    for obj in list_obj:  # слово, которое вводим
        # переданный obj преобразуется согласно кодировки указанной в E_SITE
        url = f'https://www.nastol.com.ua/tags/{quote(obj, encoding=E_SITE)}/page/1/'
        pages, img_count = get_page(get_html(url, E_SITE))

        for page in range(1, 2):
            base_url = f'https://www.nastol.com.ua/tags/{quote(obj, encoding=E_SITE)}/page/{page}/'
            print(f'{img_count}\nСтраница: {page}-{pages}')
            print('-' * 51)
            print(f"|{'№':^{4}}|{'Категория - имя файла':^{33}}|{'Статус':^{10}}|")
            inc = parsing(get_html(base_url, E_SITE), obj, win_width, win_height)
            print('-' * 51, end='\n')
            print(f"Скачено: {inc}")
    time = datetime.now() - start
    print(f"Затраченно времени: {str(time).split('.')[0]:^{50}}")
    print('-' * 51)


if __name__ == '__main__':
    main(input(':-> ').split(', '))
