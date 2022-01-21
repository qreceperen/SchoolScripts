#!/usr/bin/env python3

import os
from posixpath import dirname
from re import sub
import shutil



#? How copy user name from computer and automatically combine with path. We can have windows machine or mac or linux. Is there a way to take and combine all.
file_path = "/Users/eren/Desktop/Dates 2"
for root, subdirs, files in os.walk(file_path):
    for subdir in subdirs:
        print(subdir)
        # if subdir[0:2] == "12" and subdir[6:10] == "2021": #take to date change the date numbers according to folder name.


            # deletePath = file_path+subdir
            # print(deletePath)



