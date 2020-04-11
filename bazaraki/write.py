import csv
import requests
import os


def write_csv(data):
    with open('result/bazaraki.csv', 'a') as file:
        order = [
            'id_product', 'title', 'url', 'description', 'data', 'time', 'address', 'subcategory', 'final_price',
            'price_without_discount', 'verified', 'company_name', 'counter_photo',
        ]
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def save_photo(url, folder_name, name):
    r = requests.get(url, stream=True)
    if os.path.exists(folder_name):
        with open(name, 'bw') as file:
            file.write(r.content)
    else:
        os.mkdir(folder_name)
        with open(name, 'bw') as file:
            file.write(r.content)
