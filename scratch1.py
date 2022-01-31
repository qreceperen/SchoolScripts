#!/usr/bin/env python3

import os
import shutil
import time


path = "/Users/eren/Desktop/Original"
days = 5
seconds = time.time() - (days*24*60*60)

def get_file_or_folder_age(path):
    ctime = os.stat(path).st_ctime
    return ctime

# for root_folder, folders, files in os.walk(path):
#     for folder in folders:
#         folder_path = os.path.join(root_folder,folder)
#         print(f'Folder path {folder_path} and time is {get_file_or_folder_age(folder_path)}')

#         if seconds >= get_file_or_folder_age(folder_path):
#         print(folder_path)


for root_folder, folders, files in os.walk(path):
    for folder in folders:
        folder_path = os.path.join(root_folder,folder)
        if seconds >= get_file_or_folder_age(folder_path):
            print(folder_path)


