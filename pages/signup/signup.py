from flask import Blueprint, render_template, redirect, url_for, request, url_for, redirect, session
from utilities.db.db_manager import dbManager
# credit card  blueprint definition
signup = Blueprint('signup',
                   __name__,
                   static_folder='static',
                   static_url_path='/signup',
                   template_folder='templates')


# Routes
@signup.route('/signup', methods = ['GET','POST'])
def index():
    if request.method == 'POST':

        customer_num = dbManager.fetch('''SELECT * FROM users''')
        id = len(customer_num) + 1
        email = request.values.get('email')
        phone = request.values.get('phone')
        password = request.values.get('password')
        user_name = request.values.get('full_name')
        email_exists = dbManager.fetch('''SELECT * FROM users WHERE user_email=('%s'); '''%(email))
        if email_exists:
            return render_template('signin.html')
        else:
            new_customer = dbManager.commit('INSERT INTO users VALUES(%s,%s,%s,%s,%s)',(id,email,phone,user_name,password))
            if new_customer:
                return render_template('signin.html')

    return render_template('signup.html')






