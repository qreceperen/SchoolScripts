

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



#  gam update org unit
#  OrgUnit samples 1. Testing/grade3 ,   2. /Student/Middle/buffsci1/Grade5/tasfia  etc... (Org unit must be in quotation mark)

gam update org '<orgUnit>' add users <e-mail>  




keep writing...