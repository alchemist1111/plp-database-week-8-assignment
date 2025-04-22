import mysql.connector
from mysql.connector import Error
import os
from dotenv import load_dotenv


# Load environment variables from .env file
load_dotenv()

def get_db_connection():
    try:
        connection = mysql.connector.connect(
            host=os.getenv("DB_HOST"),
            database=os.getenv("DB_NAME"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD")
        )
        if connection.is_connected():
            return connection
    except Error as e:
        print("Error while connecting to MySQL", e)
        return None

# def get_db_connection():
#     try:
#         connection = mysql.connector.connect(
#             host="localhost",
#             database="contact_bookdb",
#             user="root",
#             password="SuntonC3@25"
#         )
#         if connection.is_connected():
#             return connection
#     except Error as e:
#         print("Error while connecting to MySQL", e)
#         return None
