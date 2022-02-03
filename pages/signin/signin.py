from flask import Blueprint, render_template, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

# credit card  blueprint definition
signin = Blueprint('signin', __name__, static_folder='static', static_url_path='/signin', template_folder='templates')


# Routes
@signin.route('/signin', methods=['GET', 'POST'])
def index():

    if request.method == 'POST':
        email = request.values.get('email')
        password = request.values.get('password')
        user = dbManager.fetch('SELECT * FROM users WHERE user_email=%s AND user_password=%s', (email, password))
        print(user)
        if user and len(user):
            session['logged_in'] = True
            session['user_name'] = {
                'name': user[0].user_name,
                'password': user[0].user_password
            }
            session['id'] = user[0].user_ID

            return redirect(url_for('homepage.index'))
        else:
            return render_template('signin.html', message="The email or password you entered is incorrect - please try again")
    return render_template('signin.html')






