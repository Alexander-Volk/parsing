import csv
from peewee import *  # ORM

db = PostgresqlDatabase(database='testpars', user='postgres', password='123', host='localhost')


class Coin(Model):
    name = CharField()
    url = TextField()
    price = CharField()

    class Meta:
        database = db


def main():
    db.connect()
    # db.create_tables([Coin])

    with open('dop_files/coin_market.csv') as file:
        order = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=order)
        coins = list(reader)
        # print(coins)

        # for row in coins:
            # плохой способ записи
            # coin = Coin(
            #     name=row['name'],
            #     url=row['url'],
            #     price=row['price']
            # )
            # coin.save()

        # по лучше способ
        with db.atomic():  # работа с транзакциями бд
            for row in coins:
                print(row)
                # Coin.create(**row)  # передаем наши словари из списка coins

        # лучший способ. Нужно список словарей разбить на куски(слайсы)
        # with db.atomic():
        #     for index in range(0, len(coins), 100):
        #         Coin.insert_many(coins[index:index + 100]).execute()


# pg_dump -U postgres -h localhost testpars > dop_files/coins.sql - дамп бд


if __name__ == '__main__':
    main()
