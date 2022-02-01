from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

# homepage blueprint definition
homepage = Blueprint('homepage', __name__, static_folder='static', static_url_path='/homepage', template_folder='templates')


# Routes
@homepage.route('/')
def index():
    if request.method == 'post':
        date = request.values.get('date')
        time = request.values.get('time')
        num_people = request.values.get('num_people')
        location = request.values.get('location')
        free_tables = dbManager.fetch('SELECT * FROM table WHERE city=%s AND number_of_diners >= %s AND status == 0', (location,num_people))
        print(free_tables)
        if free_tables:
            return redirect(url_for('SearchResults.index',free_tables = free_tables ))
        else:
            return render_template('SearchResults.html', message="Please accept our apologies, but there are currently no open tables in your search location")
    return render_template('homepage.html')


@homepage.route('/homepage')
@homepage.route('/home')
def redirect_homepage():
    return redirect(url_for('homepage.index'))
