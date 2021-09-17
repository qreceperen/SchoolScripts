#!/usr/bin/env python3

import csv

with open ("/Users/eren/SchoolScripts/PassMail.csv", 'r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    # next(my_file)

    with open ("/Users/eren/SchoolScripts/new_file.csv",'w') as newFile:
        fieldnames = ['e-mail','Fname', 'Lname','Teacher', 'ID', 'Pass']
        csv_writer = csv.DictWriter(newFile, fieldnames = fieldnames)
        csv_writer.writeheader()
        for line in csv_reader:
            # del line['Teacher']
            # del line['ID']
            csv_writer.writerow(line)
    # print(f'gam update user {line[5]} password {line[4]}')




# gam update user c1 password password12
