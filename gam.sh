

# Reset user password from csv file (/Users/eren/Desktop/passwords.csv is csv file location)
'''Open terminal or equal, write bash , write Source ~/.profile to activate gam (might not be necessary)'''
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email password ~Pass

# Do not allow to change password for users (/Users/eren/Desktop/passwords.csv is csv file location)
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email changepassword off


# Create new Users

gam create user <email address> firstname <First Name>
 lastname <Last Name> password <Password>
 [suspended on|off] [changepassword on|off]
 [gal on|off] [sha] [md5] [crypt] [nohash]
 [org <Org Name>] [recoveryemail <email> [recoveryphone <phone>]


 # Remove Group and add group members to another group as members
group_email="grade5"
staff_email="poplarstaff"
gam update group $group_email remove member $staff_email
gam print group-members group $staff_email fields email | gam csv - gam update group $group_email add manager "~email"




# Remove licenses gam script 
gam print users query "orgUnitPath=/Other" licenses | sed '/Workspace/!d' | sed '/Staff/d' > licensefile.csv
sed -i '' '1s/^/primaryEmail,license\n/' licensefile.csv
echo "$(cat licensefile.csv | wc -l) licenses"
gam csv licensefile.csv gam user "~primaryEmail" delete license 1010310008


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

# Print all org units
    gam print orgs # you can use grep function to catch specific org units.

# 4. Remove all licenses
# Each license type has specific license number you can see user licenses as follows gam info user <e-mail>.
gam user <e-mail> delete license <license NUmber>




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


# GAM Update Groups
gam update group <groupname> add member user <user email>
# Update from csv file
gam csv abc.csv gam update group "~group" add member user "~email"
# Remove member from each group.
gam user <email> delete groups



# keep writing...
