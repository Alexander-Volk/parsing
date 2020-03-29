import threading
import time

total = 4


def create_item():
    global total
    for i in range(10):
        time.sleep(2)
        print(f'iteration {i}')
        total += 1
    print('iteration done')


def create_items2():
    global total
    for i in range(7):
        time.sleep(2)
        print(f'iteration {i}')
        total += 1
    print('iteration done')


def limits_items():
    global total
    while True:
        if total > 5:
            print('overloaded')
            total -= 3
            print('subtracted by 3')
        else:
            time.sleep(1)
            print('waiting')


create1 = threading.Thread(target=create_item)
create2 = threading.Thread(target=create_items2)
limiter = threading.Thread(target=limits_items, daemon=True)

create1.start()
create2.start()
limiter.start()

create1.join()
create2.join()
# limiter.join()

print('hi')
