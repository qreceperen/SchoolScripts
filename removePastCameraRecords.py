#!/usr/bin/env python3

from dataclasses import field
import os
from re import sub
import shutil
import time


#? How copy user name from computer and automatically combine with path. We can have windows machine or mac or linux. Is there a way to take and combine all.
file_path = r'''C:\Users\recep\Desktop\1''' # Write main directory of camera records. (For Windows)
# file_path = "C:\Users\recep\Desktop\1" # Write main directory of camera records.
for root, subdirs, files in os.walk(file_path):
    for subdir in subdirs:
        file_path = file_path +"\\" +subdir
        fileCreationTime = os.stat(file_path).st_ctime
        print(fileCreationTime)
        
        # Create subdir creation time
       
        # if subdir[0:2]=='12':
        #     # File creation time is problematic. It iterates main folder creation time. Thats why all the time are same.
        #     # Need to find a way to iterate files inside the main folder.
        #     file_path = file_path +"\\" +subdir
        #     fileCreationTime = os.stat(file_path).st_ctime
        #     print(fileCreationTime)
        #     systemCurrentTime = time.time()
        #     systemTime_FileCreationTime_Difference = int(systemCurrentTime - fileCreationTime) # it removes decimal points.
        #     #NOTE 60 Unix Time/1 Min
        #     fileDirectory = os.path.abspath(os.path.join(root,subdir)) #it finds the original directory path
        #     # print(fileDirectory , fileCreationTime, systemCurrentTime, round(systemTime_FileCreationTime_Difference/3600,2))
        
        #     # print(fileDirectory , fileCreationTime, systemCurrentTime, systemTimeFileCreationTimeDifference)
        # # Create system current time
        # # Compare subdir creation time and system creation time
        
    


        # shutil.rmtree(fileDirectory)