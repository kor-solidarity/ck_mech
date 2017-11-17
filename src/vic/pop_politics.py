import pymysql

# 역할: 각 팝의 소지품 등 분석. 그 후 최종값 반환함.

passwd = str(input('what is the password? :'))

conn = pymysql.connect(host='localhost', port=3306, user='root', passwd=passwd, db='paradox_mj')

cur = conn.cursor()

print(cur.description)

cur.close()
conn.close()

# 팝 안에 가지고 있어야 하는 사안들:
# 인구,