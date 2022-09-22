# Remove licenses gam script 
gam print users query "orgUnitPath=/Other" licenses | sed '/Workspace/!d' | sed '/Staff/d' > licensefile.csv
sed -i '' '1s/^/primaryEmail,license\n/' licensefile.csv
echo "$(cat licensefile.csv | wc -l) licenses"
gam csv licensefile.csv gam user "~primaryEmail" delete license 1010310008




# Reset user password from csv file (/Users/eren/Desktop/passwords.csv is csv file location)
'''Open terminal or equal, write bash , write Source ~/.profile to activate gam (might not be necessary)'''
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email password ~Pass

# Do not allow to change password for users (/Users/eren/Desktop/passwords.csv is csv file location)
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email changepassword off


# Create new Users
#  Example: gam csv CreateNewStaffEmailTemplate_gam.csv gam create user "~email" firstname "~FirstName" lastname "~LastName" password "~password" org "~orgUnit" changepassword o
gam create user <email address> firstname <First Name>
 lastname <Last Name> password <Password>
 [suspended on|off] [changepassword on|off]
 [gal on|off] [sha] [md5] [crypt] [nohash]
 [org <Org Name>] [recoveryemail <email>] [recoveryphone <phone>]




 # Remove Group and add group members to another group as members
group_email="grade5"
staff_email="poplarstaff"
gam update group $group_email remove member $staff_email
gam print group-members group $staff_email fields email | gam csv - gam update group $group_email add manager "~email"

gam update group "~group2" add member "~email"




# carry all members from one group to another and delete from previous group.

groupMemberList="groupMemberList.csv"
newGroupName="testgroup1"
oldGroupName="testgroup2"
gam print group-members group_ns $oldGroupName > $groupMemberList
sleep 10
gam csv $groupMemberList gam update group $newGroupName add member user "~email"
gam update group $oldGroupName clear 




# For SUSPENDED STUDENTS
# 1. Suspent the STUDENTS
gam update user <e-mail> suspended (on or off)
# 2. Remove from all groups
gam user <email address> delete groups
# 3.Change the org unit
#  gam update org unit
#  OrgUnit samples 1. Testing/grade3 , 2./Student/Elementary/buffsci1    3. /Student/Middle/buffsci1/Grade5/tasfia  etc... (Org unit must be in quotation mark)
gam update org '<orgUnit>' add users <e-mail>  
# or
gam update user <email> org '<OrgUnit>'

'/Staff/buffsci1'
gam update org '<orgUnit>' add users <e-mail>  


# PRINT 
# Print all org units
    gam print orgs # you can use grep function to catch specific org units.
# Print users according to OrgUnit
gam print users firstname lastname query "orgUnitPath=/Staff" > Users.csv
gam print users firstname lastname query "orgUnitPath=/Student" > allstudents.csv
# Print group members according to roles( if you do not want you can erase roles)

gam print group-members group <Group Email Address> roles owners,managers
gam print group-members group clarestaff@buffsci.org > group1.csv
gam print group-members group rocsciallstaff@rocsci.org >> group1.csv





# Disable Chrome Book Devices 
gam update cros cros_sn <serial Number > action disable


# Bulk Operations

#1 "~primaryEmail is csv column title, be sure you are on the .csv file screen on table."
gam csv gamBulkTest.csv gam update user "~primaryEmail" email "~emails
gam csv gamBulkTest.csv gam update group "~primaryEmail" email "~emails

# Buffsci1 Suspended students org = "/Other/buffsci1/SuspendedStudents"
# suspend user, change org to Suspended, remove from groups 
gam csv BulkOperations.csv gam update user "~primaryEmail" suspended on
gam csv BulkOperations.csv gam update user "~primaryEmail" org "~org" 
gam user <email> delete groups


# GAM Update Group
gam update group <groupname> add member user <user email>
# Update from csv file
gam csv abc.csv gam update group "~group" add member user "~email"
# Remove member from each group.
gam user <email> delete groups
#remove all members from a group
gam update group <group Email> clear 


gam csv NewStaff.csv gam update group "~group1" add member user "~email" | gam csv NewStaff.csv gam update group "~group2" add member user "~email"

# keep writing...
# Download all users 
gam print users fields firstname,lastname,email > users.csv
gam csv newEmail.csv gam update group "~group" add member user "~email"

# -ORG UNIT-
# Create Org Unit

 gam csv TestGam.csv gam create org "~orgName" parent "~RootOrg"

 gam update org '<orgUnit>' add users <e-mail>  




 #  # EXCELL FORMULAS 

# STEP 1

# Take last Name and Create email - EXCEL FORMULA
=LOWER(G2&"@rocsci.org")

# Take first letter of first name and full lastname -Excel FORMULA 
=LOWER(LEFT(F2,1)&G2&"@rocsci.org")

# Create Password first four letter from lastname and random 4 digit - EXCEL FORMULA
=LOWER(LEFT(G2,4))&RANDBETWEEN(1000,9999)

Add all unique email to GSuite with gam

# Sample GAM for STEP1:
gam csv abc.csv gam create user "~email" firstname "~FirstName" lastname "~LastName" password "~password" changepassword off #Students
gam csv abc.csv gam create user "~email" firstname "~FirstName" lastname "~LastName" password changeme changepassword on  # Staff



# # STEP 2 !!! ADD ORG UNIT AFTER CREATING USERS
# Create Org Units (Students). Add to org unit (Staff)

# sample org = /Student/Elementary/rocsci/Gradek

 gam csv abc.csv gam create org "~orgUnit" parent "~parentOrg"
 


#  # STEP 3
# Add all users to newly created org Unit 

gam csv abc.csv gam update org "~addOrg" add users "~email"  

gam csv rocsciusers.csv gam update org "~addOrg" add users "~email"  
 

# SUSPEND
# gam suspend and change org unit of student.
#Student
gam update user "~email" suspended on | gam update org '/Other/buffsci1/SuspendedStudents' add users "~email" | gam user "kdelgado" delete groups
sleep 5s
gam delete org '/Student/Elementary/rocsci/Gradek/STUDENTEMAILID'

gam update user "~email" suspended on | gam update org '/Other/rocsci/SuspendedStudents' add users "~email" | gam user "kdelgado" delete groups | gam delete org '/Student/Elementary/rocsci/Gradek/STUDENTEMAILID'
#staff
gam update user "~email" suspended on | gam update org '/Other/FormerEmployeesSuspended' add users "~email" | gam user "kdelgado" delete groups
# SAMPLE: 
gam update user kdelgado suspended on | gam update org '/Other/FormerEmployeesSuspended' add users kdelgado | gam user kdelgado delete groups








NOTES LAST STUDENTS ADDED
Clare: k   Abdul Wahid 
Doat: K	2022-23	Mahbeer		Rahaman
Poplar: 6	2022-23	Theopolis "Theo"	Ira	Huguley IV
Franklin: 9	2022-23	Carmine	Nicholas	Doty
Franklin2:  10	2022-23	Nowshin	Zarita	Tabassum


gam print users firstname,lastname,email query "orgUnitPath=/Student/Elementary/rocsci" > allrocsci.csv

gam csv allrocsci.csv gam update user "~email" password "~password" changepassword off



gam update user esmith suspended on | gam update org '/Other/buffsci1/SuspendedStudents' add users esmith | gam user esmith delete groups
sleep 5s
gam delete org '/Student/Middle/buffsci1/Grade5/mwrightcroxie'



































