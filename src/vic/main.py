import pymysql


adreson = 'localhost'
nomo = 'root'
slosxilo = '123'
database = 'paradox_mj'

db = pymysql.connect(adreson, nomo, slosxilo, database)

cursor = db.cursor()

cursor.execute('SELECT VERSION()')

data = cursor.fetchone()
print('DB ver. : %s' % data)

db.close()


