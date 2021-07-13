

# Reset user password from csv file (/Users/eren/Desktop/passwords.csv is csv file location)
'''Open terminal or equal, write bash , write Source ~/.profile to activate gam (might not be necessary)'''
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email password ~Pass

# Do not allow to change password for users (/Users/eren/Desktop/passwords.csv is csv file location)
gam csv /Users/eren/Desktop/passwords.csv gam update user ~email changepassword off
