#!/usr/bin/env python3

import os
from re import sub
import shutil


#? How copy user name from computer and automatically combine with path. We can have windows machine or mac or linux. Is there a way to take and combine all.
file_path = "/Users/eren/Desktop/Original 3" # Write main directory of camera records.
for root, subdirs, files in os.walk(file_path):
    for subdir in subdirs:
        if subdir[0:2]=="12" and subdir[6:10]=="2021": # first number is month such as 01,02,03,04 second number is year. The date format in the camera folder is 01.17.2021. You can change month and year number to delete previous month records.
            fileDirectory = os.path.abspath(os.path.join(root,subdir)) #it finds the original directory path
            print(fileDirectory)
            # shutil.rmtree(fileDirectory)
