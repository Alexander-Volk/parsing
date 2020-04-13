import os
from bazaraki.pars_data import get_html, get_page_data
from check_runtime import runtime
from multiprocessing import Pool
from bazaraki.write import Product, db


def make_all(url):
    products = get_page_data(url)

    with db.atomic():
        for index in range(0, len(products), 100):
            Product.insert_many(products[index:index + 100]).execute()


@runtime
def main():
    url = 'https://www.bazaraki.com/real-estate/?type_view=line&page={}'
    urls = [url.format(str(page)) for page in range(1, 501)]

    # Запись в бд
    if db.table_exists([Product]):
        db.connect()
    else:
        db.create_tables([Product])

    with Pool(50) as p:
        p.map(make_all, urls)


if __name__ == '__main__':
    main()

#  pg_dump -U volk -h localhost testpars > dop_files/bazaraki_products.sql --> дамп бд
