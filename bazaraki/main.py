import os
from bazaraki.pars_data import get_html, get_page_data
from check_runtime import runtime
from multiprocessing import Pool


def make_all(url):
    get_page_data(url)


@runtime
def main():
    url = 'https://www.bazaraki.com/real-estate/?type_view=line&page={}'
    urls = [url.format(str(page)) for page in range(1, 11)]

    with Pool(50) as p:
        p.map(make_all, urls)


if __name__ == '__main__':
    main()
