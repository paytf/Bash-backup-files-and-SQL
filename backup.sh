#!/bin/bash
# AUTO BACKUP SCRIPT
# REPLACE DB_USERNAME, DB_PASSWORD AND DB_NAME with "Database Username, Database Password, Database Name"
# -pPASSWORD, no space needed after -p;
# for example : 
# mysqldump -u root -pF1F2F3F4F5F6F7F8F9 wp_mainsite > "$DATE".sql --no-tablespaces

DATE=$(date +%s)

mysqldump -u DB_USERNAME -pDB_PASSWORD DB_NAME > "$DATE".sql --no-tablespaces

zip -rq "$DATE".zip website_directory "$DATE".sql

curl -F "uploadedfile=@$DATE.zip" http://youserver.com/receiver.php

rm -rf "$DATE".zip
rm -rf "$DATE".sql
