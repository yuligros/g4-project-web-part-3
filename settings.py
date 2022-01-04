import os
from dotenv import load_dotenv
load_dotenv()

# Secret key setting from .env for Flask sessions
SECRET_KEY = os.environ.get('SECRET_KEY')

# DB base configuration from .env for modularity and security reasons
DB = {
    'host' : os.environ.get('localhost'),
    'user': os.environ.get('root'),
    'password': os.environ.get('root'),
    'database': os.environ.get('group4')
}


from flask import Flask, redirect, url_for,render_template
from flask import request, session
import mysql.connector
from datetime import date

app = Flask(__name__)
app.secret_key = '123'
app.permanent_session_lifetime = 30


# ------------- DATABASE CONNECTION --------------- #
def interact_db(query, query_type: str):
    return_value = False
    connection = mysql.connector.connect(
                         host="localhost",
                         user="root",
                         password="Y$11Gros"
    )
    cursor = connection.cursor(named_tuple=True)
    cursor.execute(query)

    if query_type == 'commit':
        # Use for INSERT, UPDATE, DELETE statements.
        # Returns: The number of rows affected by the query (a non-negative int).
        connection.commit()
        return_value = True

    if query_type == 'fetch':
        # Use for SELECT statement.
        # Returns: False if the query failed, or the result of the query if it succeeded.
        query_result = cursor.fetchall()
        return_value = query_result

    connection.close()
    cursor.close()
    return return_value
# ------------------------------------------------- #

