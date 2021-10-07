#!/usr/bin/env python3
import csv

with open ("/Users/eren/SchoolScripts/PassMail.csv", 'r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    next(csv_reader)

    for line in csv_reader:
        # print(f'gam update user {line["e-mail"]} password {line["Pass"]}') # Update user mail and password
        # print(f"gam update group {line['group']} add member {line['student1']") # Update user group
        # print(f'gam update user {line[0]} password {line[0][0:3]}'+'12345')
        # print(f'{line[0]}')
        # print(f'{line[0][0:3]}'+'12345')
        # print(f'{line[0]} -- {line[0][0:3]}'+'12345')  # For Teacher




# gam update group samplegroup add member student1@bascs.org
# gam update user c1 password password12
