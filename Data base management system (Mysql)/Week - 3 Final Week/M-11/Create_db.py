import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="mysql"  # 👉 এখানে যদি তোমার অন্য পাসওয়ার্ড হয়, সেটা দাও
    )

    if mydb.is_connected():
        print("✅ Connected to MySQL server")

        mycursor = mydb.cursor()

        db_name = "python_test_db"
        mycursor.execute(f"CREATE DATABASE {db_name}")
        print(f"🎉 Database '{db_name}' created successfully!")

except Error as e:
    print("❌ Error:", e)
    

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("🔒 MySQL connection closed")
