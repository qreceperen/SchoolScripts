#!/usr/bin/env python3

import csv

with open ("/Users/eren/SchoolScripts/PassMail.csv", 'r') as csv_file:
<<<<<<< HEAD
    csv_reader = csv.reader(csv_file)
    next(csv_reader)
    for line in csv_reader:
        # print(f'gam update user {line[1]} password {line[2]}')
        # print(f'gam update user {line[0]} password {line[0][0:3]}'+'12345')
        # print(f'{line[0]}')
        # print(f'{line[0][0:3]}'+'12345')
        print(f'{line[0]} -- {line[0][0:3]}'+'12345')  # For Teacher





# gam update user c1 password password12
=======
    csv_reader = csv.DictReader(csv_file)
    # next(csv_reader)
    fieldnames = ['name', 'email', 'password']
    for line in csv_reader:
        # print(f'gam update user {line[1]} password {line[2]}')
        # print(f'gam update user {line[1]} password {line[1][0:3]}'+'12345')
        print(line['name'][0:2])
        # print(f'{line[0][0:3]}'+'12345')
        # print(f'{line[0]} -- {line[1]} -- {line[1][0:3]}'+'12345')  # For Teacher



#
# import random
# print(random.randint(3,9))
# # gam update user c1 password password12
>>>>>>> develop
