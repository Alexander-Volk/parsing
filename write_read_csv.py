import csv


def write_csv(data):
    with open('csv_doc/people.csv', 'a') as file:
        writer = csv.writer(file)  # delimiter=',' - разграничитель между столбиками
        writer.writerow(
            (
                data['first_name'],  # Явно указываем какие клюючи словаря и в каком порядке хотим записать
                data['last_name'],
                data['age'],
            )
        )


def write_csv2(data):
    with open('csv_doc/people.csv', 'a') as file:
        order = ['last_name', 'first_name', 'age']  # определяет последовательность записи данных в словарь
        writer = csv.DictWriter(file, fieldnames=order)

        writer.writerow(data)


def main():
    data1 = {'first_name': 'Alexander', 'last_name': 'Volk', 'age': 19, }
    data2 = {'first_name': 'Masha', 'last_name': 'Ivnaova', 'age': 24, }
    data3 = {'first_name': 'Ksu', 'last_name': 'Petrova', 'age': 18, }

    some_list = [data1, data2, data3]

    # for d_item in some_list:
    #     print(d_item)

    with open('csv_doc/reebok.csv') as file:
        fieldnames = ['name', 'url', 'category',
                      'num_color']  # нужно обязательно указать ключи для правиильного соединения данных
        reader = csv.DictReader(file, fieldnames=fieldnames)

        for row in reader:
            print(row)


if __name__ == '__main__':
    main()
