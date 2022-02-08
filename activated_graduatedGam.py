#!/usr/bin/env python3
import csv
# import random

with open ("/Users/eren/SchoolScripts/AllSuspend Graduate.csv", 'r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    next(csv_reader)

    for line in csv_reader:
            print(f"gam update user {line['Member Email']} suspended on")
            print(f"gam update user {line['Member Email']} org '/Other/buffsci1/GraduatedGrade12/Grade12-2020'")
            # print(line['Email Address [Required]'])
            # print(line['Member Email'])
       
        




# gam update group samplegroup add member student1@bascs.org
# gam update user c1 password password12



# gam update user aislam  org '/Other/buffsci1/GraduatedGrade12/Grade12-2020'



/Other/buffsci1/Grade12-Graduated-2021