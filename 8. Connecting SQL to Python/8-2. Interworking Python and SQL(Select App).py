# Application of Interworking - SELECT
from logging import root
import pymysql

row = None

conn = pymysql.connect(host='127.0.0.1', user='root', password='0000',
        db='soloDB', charset='utf8')
cur = conn.cursor()

cur.execute("SELECT * FROM userTable")

print("UserID" + " " * 11 + "UserName" + " " * 16 + "Email" + " " * 19 + "Birthdate")
print("---------------------------------------------------------------------------")

while(True):
    row = cur.fetchone()
    if row == None:
        break
    
    print("%-10s \t %-15s \t %-20s \t %d" % (row[0], row[1], row[2], row[3]))

conn.close()
