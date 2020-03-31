import time
from functools import wraps


def runtime(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        start = time.time()
        func(*args, **kwargs)
        print(f'Время выполнения: {time.time() - start}')

    return wrapper
