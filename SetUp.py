import mysql.connector

my_password = input('Please enter mysql password: ')

# Connect mysql and python
db = mysql.connector.connect(
    host='localhost',
    user='root',
    password= my_password,
    database='e_coffee'
)

# cursor to exceute queries
cursor = db.cursor()

# close connection
db.close()