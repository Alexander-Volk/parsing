import requests
import re
import csv
import os
import threading
from bs4 import BeautifulSoup
from trans_text import tr
from datetime import datetime

i_count = 1


def get_html(url):
    headers = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 ' \
              '(KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'
    response = requests.get(url, headers={'User-Agent': headers})
    return response.text


def title_correction(title):
    if '+' in title:
        titles = title.split('+ ')
        new_titles = []
        for i in titles:
            title = re.sub(r'\S+$', '', i).strip()
            new_titles.append(title)
        return f'{new_titles[0]}, {new_titles[1]}'
    elif ',' not in title:
        title = re.sub(r'\S+$', '', title.strip())
        return title
    return title.split(', ')[0]


def get_page_count(html):
    try:
        soup = BeautifulSoup(html, 'lxml')
        n_pages = soup.find('div', class_='bx-pagination').find_all('a')[-2].text
        return int(n_pages)
    except AttributeError:
        return 1


def save_photo(url, name):
    r = requests.get(url, stream=True)
    if os.path.exists('img/'):
        with open(name, 'bw') as file:
            file.write(r.content)
    else:
        os.mkdir('img/')
        with open(name, 'bw') as file:
            file.write(r.content)


def write_csv(data):
    with open('gigi.csv', 'a') as file:
        order = ['title', 'link', 'manufacturer', 'volume', 'description', 'price']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_product_photo(html, obj):
    global i_count
    soup = BeautifulSoup(html, 'lxml')
    urls = soup.find_all('a', class_='bx_catalog_item_images')

    for url in urls:
        url = f"https://www.gigi.ru{url.get('href')}"
        soup = BeautifulSoup(get_html(url), 'lxml')
        image_url = f"https://www.gigi.ru{soup.find('div', class_='bx_bigimages_imgcontainer').find('img').get('src')}"
        name = f"img/{obj}-{image_url.split('/')[-1]}"
        save_photo(image_url, name)
        print(f"|{i_count:^{4}}|{name.split('/')[-1]:^{33}}|{'Загружен':^{10}}|")
        i_count += 1


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    catalog_items = soup.find_all('div', class_='bx_catalog_item')

    for item in catalog_items:
        title = title_correction(item.find('div', class_='bx_catalog_item_title').find('a').get('title'))
        url = f"https://www.gigi.ru/{item.find('a', class_='bx_catalog_item_images').get('href')}"

        soup = BeautifulSoup(get_html(url), 'lxml')
        item_info = soup.find('div', class_='item_info_section prop_list').find_all('span')
        manufacturer = item_info[4].text
        volume = item_info[-1].text.rstrip('.')

        photo_link = f"https://www.gigi.ru{soup.find('div', class_='bx_bigimages_imgcontainer').find('img').get('src')}"
        description = soup.find('div', {'itemprop': 'description'}).text.replace('\n', '').strip()
        price = soup.find('div', class_='item_current_price').text

        data = {
            'title': title,
            'link': photo_link,
            'manufacturer': manufacturer,
            'volume': volume,
            'description': description,
            'price': price,
        }
        write_csv(data)


start = datetime.now()


def main(list_obj):
    start = datetime.now()

    for obj in list_obj:
        url = f'https://www.gigi.ru/vsya_produktsiya/{obj}/'
        for page in range(1, get_page_count(get_html(url)) + 1):
            base_url = f"https://www.gigi.ru/vsya_produktsiya/{obj}/?PAGEN_1={page}"
            html = get_html(base_url)
            t1 = threading.Thread(target=get_page_data, args=(html,))
            t1.start()
            # get_page_data(get_html(url))
            # get_product_photo(get_html(base_url), obj)
            t2 = threading.Thread(target=get_product_photo, args=(html, obj))
            t2.start()
            t2.join()
    print(f"Время выполнения: {str(datetime.now() - start).split('.')[0]}")



if __name__ == '__main__':
    main(tr(input('Введите категории:-> ')).split(', '))
