import os
import shutil


# удаляет папки и файлы из указанной директории не удаляя корневую папку
folder = '/home/volk/PycharmProjects/parsing/bazaraki/result'
for the_file in os.listdir(folder):
    file_path = os.path.join(folder, the_file)
    try:
        if os.path.isfile(file_path):
            os.unlink(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)
    except Exception as e:
        print(e)
