#!/bin/env python3
import speedtest
import os
import mysql.connector

#Database connection part
db_location = os.getenv('db_location')
db_username = os.getenv('db_username_root')
db_password = os.getenv('db_password_root')
mydb = mysql.connector.connect(
  host=db_location,
  user=db_username,
  password=db_password
)

##Speedtest part
st = speedtest.Speedtest()
download = st.download()
upload = st.upload()
ping = st.results.ping
download = download/1000000
upload = upload/1000000

#Database part
mycursor = mydb.cursor()
sql = "INSERT INTO `internet`.`speedtest` (`time`, `upload`, `download`, `ping`) VALUES (UNIX_TIMESTAMP(), %s, %s, %s)"
val = (upload, download, ping)
mycursor.execute(sql, val)
mydb.commit()