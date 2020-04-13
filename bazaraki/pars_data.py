import requests
import datetime
from bs4 import BeautifulSoup
from bazaraki.write import write_csv, save_photo
from check_runtime import runtime


def get_html(url):
    headers = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 ' \
              '(KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'
    # s = requests.session()  # получил бан
    r = requests.get(url, headers={'user-agent': headers})
    return r.text


def update_datetime(dt):
    dt = dt.split()
    if 'Today' in dt[0]:
        dt[0] = datetime.date.today()  # задаем формат даты день.месяц.год, если из строки нужно
        # получить datetime используем strptime(формат)
    return dt


def get_all_prices(block):
    price = block.find('meta', {'itemprop': 'price'}).get('content').split('.')[0]
    if block.find('div', class_='announcement-block__discount'):
        price_without_discount = block.find('span', class_='announcement-block__discount-start').text.strip()[1:]
    else:
        price_without_discount = price
    return float(price), float(price_without_discount.replace('.', ''))


def security_check(block):
    if block.find('span', class_='verified'):
        return True
    return False


def get_quantity_photo(soup):
    if soup.find('div', class_='list-announcement-block-img').find('img') and \
            soup.find('div', class_='photo-commodities'):
        return int(soup.find('div', class_='photo-commodities').text.strip())
    elif soup.find('div', class_='list-announcement-block-img').find('img'):
        return 1
    return 0


def get_sale_page(url):
    return BeautifulSoup(get_html(url), 'lxml')


def product_page_information(url):
    soup = get_sale_page(url)
    photo_list = soup.find_all('img', {'itemprop': 'image'})
    id_ = soup.find('div', class_='announcement-content-header').find('span', {'itemprop': 'sku'}).text

    if soup.find('div', class_='announcement-verified'):
        name = soup.find('div', class_='announcement-verified'). \
            find('p', class_='announcement-verified__name').text.strip()
        return int(id_), name, photo_list
    return int(id_), '', photo_list


def get_description(soup):
    if soup.find('div', class_='announcement-block__description'):
        return soup.find('div', {'itemprop': 'description'}).text.strip()
    return ''


@runtime
def get_page_data(url):
    list_data = []
    soup = get_sale_page(url)
    data_cards = soup.find('ul', class_='list-simple__output').find_all('li', class_='announcement-container')

    for card in data_cards:
        url = f"https://www.bazaraki.com{card.find('a', class_='announcement-block__title').get('href')}"

        title = card.find('a', class_='announcement-block__title').get('content')
        description = get_description(card)

        block_date = card.find('div', class_='announcement-block__date').text.strip().split(',')
        dt = update_datetime(block_date[0])  # записать в виде date/time object
        data = dt[0]
        time = dt[1]

        try:
            address = f'{block_date[1].strip()},{block_date[2]}'
        except IndexError:
            address = ''

        subcategory = card.find('div', class_='announcement-block__breadcrumbs').text.split('»')[1].strip()

        block_pv = card.find('div', {'itemprop': 'offers'})
        final_price, price_without_discount = get_all_prices(block_pv)

        verified = security_check(block_pv)

        counter_photo = get_quantity_photo(card)

        id_product, company_name, photo_list = product_page_information(url)

        if photo_list:
            for photo in photo_list:
                self_photo = photo.get('src')
                # передаем src-url, директорию(id) и имя файла с расширением jpg
                # save_photo(self_photo, f'result/{id_product}', f"result/{id_product}/{self_photo.split('/')[-1]}")

        data = {
            'id_product': int(id_product),
            'title': title,
            'url': url,
            'description': description,
            'data': data,
            'time': time,
            'address': address,
            'subcategory': subcategory,
            'final_price': final_price,
            'price_without_discount': price_without_discount,
            'verified': verified,
            'company_name': company_name,
            'counter_photo': counter_photo,
        }
        # write_csv(data)  # включить при записи в csv

        list_data.append(data)
