from bs4 import BeautifulSoup
import re


def read_html(file):
    with open(file) as file:
        html = file.read()
        return html


# find()  -  поиск сверху вниз
# find_all()


# .parent - поиск снизу вверх
# .find_parent() - конкритезируем родителя и получаем весь контейнер
# .parents - вернет всех родителей
# .find_parents()

# если контейнеры являются между собой братьями/сестрами (по дереву движение по веткам в сторону)
# .find_next_sibling()  # если нам нужны соседние контейнеры
# .find_previous_sibling()


def get_copywriter(tag):
    whois = tag.find('div', id='whois').text.strip()
    if 'Copywriter' in whois:
        return tag
    return None


def get_salary(s):  # salary: 2700 usd per month -> 2700
    pattern = r'\d{1,9}'  # \d - любая цифра 0-9, в {1,9} - указывается колличество (от 1 до 9)
    salary = re.findall(pattern, s)[0]  # (шаблон, где искать) - возвращает список
    # salary = re.search(pattern, s).group()  # str
    print(salary)


def main():
    html = read_html('dop_files/index.html')
    soup = BeautifulSoup(html, 'lxml')
    row = soup.find_all('div', class_='row')  # можно указывать {'class': 'row'}

    alena = soup.find('div', text='Alena').parent  # получим весь родительский контейнер
    alena = soup.find('div', text='Alena').find_parent(class_='row')  # конкретизируем родителя

    # фильтрация тегов:
    copywriters = []
    persons = soup.find_all('div', class_='row')
    for person in persons:  # возвращает объект супа на каждой итерации
        cop_wr = get_copywriter(person)
        if cop_wr:
            copywriters.append(cop_wr)

    # регулярные выражения
    salary = soup.find_all('div',
                           {'data-set': 'salary'})  # можно использовать re для поиска - text=re.compile('\d{1,9}')
    for i in salary:
        get_salary(i.text)

    # ^ - начало строки
    # $ - конец строки
    # . - любой сивол
    # + - неограниченное количество вхождений
    # \d - цифра
    # \w - буквы, цифры, _


if __name__ == '__main__':
    main()
