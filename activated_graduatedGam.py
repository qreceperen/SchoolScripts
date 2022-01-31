#!/usr/bin/env python3
import csv
# import random

with open ("/Users/eren/SchoolScripts/activated_graduates.csv", 'r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    next(csv_reader)

    for line in csv_reader:
            print(f"gam update user {line['Member Email']} org '/Staff/buffsci1'")
            # print(line['Email Address [Required]'])
            # print(line['Member Email'])
       
        




# gam update group samplegroup add member student1@bascs.org
# gam update user c1 password password12
