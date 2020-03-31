import csv


def write_csv(data):
    with open('result/bazaraki.csv', 'a') as file:
        order = [
            'id_product', 'title', 'url', 'description', 'data', 'time', 'address', 'subcategory', 'final_price',
            'price_without_discount', 'verified', 'company_name', 'counter_photo',
        ]
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)
