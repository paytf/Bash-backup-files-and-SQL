# Bash-backup-files-and-SQL
A bash that uploads to PHP file zip file that contains Files and SQL

You add backup.sh file in your main server; the server that you want to upload files from

```
REPLACE DB_USERNAME, DB_PASSWORD AND DB_NAME with "Database Username, Database Password, Database Name"
in this case I am using MYSQL, thus -pPASSWORD does not require space needed after -p. All you have to do is just add your password directly after -p
It is highly not recommended to use password in the command line though.
for example : 
mysqldump -u root -pF1F2F3F4F5F6F7F8F9 wp_mainsite > "$DATE".sql --no-tablespaces
```

In the backup server, I for instance am using a shared hosting that gives unlimited space (high storage), upload the receiver.php or name it any name you want
in the PHP receiver, you should restrict acces only to your server by replacing XXX.YYY.ZZZ.AAA with your ServerIP; also change $target_path to some random text and give that folder 777 permissions
