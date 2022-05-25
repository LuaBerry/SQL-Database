# Application of Interworking - INSERT
import pymysql

data1, data2, data3, data4 = "", "", "", ""
sql = ""

conn = pymysql.connect(host='127.0.0.1', user='root', password='0000',
        db='soloDB', charset='utf8')
cur = conn.cursor()

while (True):
        data1 = input("User ID: ")
        if data1 == "":
                break
        data2 = input("User Name: ")
        data3 = input("User Email: ")
        data4 = input("User Birthdate: ")
        sql = "INSERT INTO userTable VALUES" "('"+data1+"', '"+data2+"', '"+data3+"', "+data4+")"
        cur.execute(sql)

conn.commit()
conn.close()
