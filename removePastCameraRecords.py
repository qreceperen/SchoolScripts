#!/usr/bin/env python3

import os
from posixpath import dirname
from re import sub

file_path = "/Users/eren/Desktop/Dates 2"


for root, subdirs, files in os.walk(file_path):
    for subdir in subdirs:
        if subdir[0:2] == "12" and subdir[6:10] == "2021":
            print(subdir)

    # print ("current path", dirpath)
    # print ("Directories", dirnames)
    # print ("Files", filenames)


# print(os.listdir(file_path))