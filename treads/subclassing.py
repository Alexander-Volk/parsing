# создаем потоковый объект
import threading
import time


class MyThread(threading.Thread):
    def __init__(self, number, func, args):
        super().__init__()
        self.number = number
        self.func = func
        self.args = args

    def run(self):  # аналог метода start()
        print(f'{self.number} has started!')  # getName - имя потока, создоваемое при инициализации объекта
        self.func(*self.args)
        # try:  # аналог - при создании потока атрибут target=
        #     if self._target:
        #         self._target(*self._args, **self._kwargs)
        # finally:  # нужно зачистить указатели на потоковую функцию
        #     del self._target, self._args, self._kwargs
        print(f'{self.number} has finished')


# def sleeper(n, name):
#     print(f'Привет я {name}. Собираюсь поспать')
#     time.sleep(n)
#     print(f'{name} проснулся.')


def double(number, cycles):
    for _ in range(cycles):
        number += number
    print(number)


# for i in range(4):  # задаем количестов потоков
#     t = MyThread(target=sleeper, name=f'thread{i + 1}', args=(3, f'thread{i + 1}'))
#     t.start()


threads_list = []


for i in range(50):
    t = MyThread(number=i + 1, func=double, args=[i, 3])
    threads_list.append(t)
    t.start()


for t in threads_list:
    t.join()