#!/usr/bin/env python3
import csv
# import random

with open ("/Users/eren/SchoolScripts/newList.csv", 'r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    next(csv_reader)

    for line in csv_reader:
            # print(f"gam update user {line['Email Address [Required]']} org '/Staff/buffsci1'")
            print(line['Email Address [Required]'])
       
        




# gam update group samplegroup add member student1@bascs.org
# gam update user c1 password password12
