from peewee import *

db = PostgresqlDatabase(database='mydb', user='volk', password='123', host='localhost')


class Fish(Model):
    name = CharField()
    weight = SmallIntegerField()
    bait = CharField()
    region = CharField()
    location = CharField()
    img = CharField()
    time_fishing = CharField()
    depth = SmallIntegerField()

    class Meta:
        database = db


def save_db():
    with open('fish.txt') as file:
        for line in file.readlines():
            f = Fish.create(
                name=line.strip().split(':')[0],
                weight=line.strip().split(':')[1],
                bait=line.strip().split(':')[2],
                region=line.strip().split(':')[3],
                location=line.strip().split(':')[4],
                img=line.strip().split(':')[5],
                time_fishing=line.strip().split(':')[6],
                depth=line.strip().split(':')[7],
            )
        f.save()


if __name__ == '__main__':
    save_db()
