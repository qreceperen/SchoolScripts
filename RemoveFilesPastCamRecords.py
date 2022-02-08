#!/usr/bin/env python3

import os
import shutil
import time

def get_file_or_folder_age(path):
    ctime = os.stat(path).st_ctime
    return ctime


def remove_folder(path):
    # removing the folder
    if not shutil.rmtree(path):
        print(f'{path} is removed successfully')
    else:
        print(f'Unable to delete '+path)

def remove_file(path):
    if not os.remove(path):
        print(f'{path} is removed successfuly')
    else:
        print("Unable to delete the "+path)


def main():
    # deletet files and folder counter
    deleted_folders_count = 0
    deleted_files_count = 0

    # Path the folder and files will be deleted
    path = "/Users/eren/Desktop/newwVideo2021"
    # path = r'''C:\Users\recep\Desktop\1''' # Write main directory of camera records. (For Windows)

    # How old folder will be deleted
    days = 0.0001

    # Converting the days to seconds. time.time() returns current time in second. 
    # Calculate current time and substract from 30 days(in second time). It checks current time is bigger than 30 days or not
    seconds = time.time() - (days*24*60*60) 
    for root_folder, folders, files in os.walk(path):
        for folder in folders:
            if folder[-4:] == '2021' or folder[-4:] == '2022' or folder[-4:] == '2023' or folder[-4:] == '2024' or folder[-4:] == '2025':
                folder_path = os.path.join(root_folder,folder)
                if seconds >= get_file_or_folder_age(folder_path):
                    remove_folder(folder_path)
                    deleted_folders_count += 1

        for file in files:
            file_path = os.path.join(root_folder,file)
            if seconds >= get_file_or_folder_age(file_path):
                remove_file(file_path) 
                deleted_files_count += 1

if __name__ == '__main__':
	main()


