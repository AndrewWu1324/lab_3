#!/bin/bash
# Authors: Alan Yu, Andrew Wu
# Date: 2/6/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#Read Filename and RegEx
echo "Enter filename: "
read filename
echo "Enter regular expression: "
read regEx

#Grep
grep $regEx $filename 

#Count number of phone numbers
echo "Number of phone numbers: "
grep -c [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] $filename 

#Count number of emails
echo "Number of emails: "
grep -c "@" $filename

#List of all phone numbers
echo "List of all 303- phone numbers: "
grep -o ^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] $filename

#Store list of all emails from geocities.com
grep "@geocities.com" $filename >> email_results.txt

