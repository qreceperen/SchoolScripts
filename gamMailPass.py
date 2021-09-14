#!/usr/bin/env python3

import csv

with open ("/Users/eren/SchoolScripts/PassMail.csv", 'r') as csv_file:
    my_file = csv.reader(csv_file)
    next(my_file)

    with open ("/Users/eren/SchoolScripts/new_file.csv",'w') as newFile:
        csv_writer = csv.writer(newFile)
        for line in my_file:
            csv_writer.writerow(line[1])
        # print(f'gam update user {line[5]} password {line[4]}')




# gam update user c1 password password12
