from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

# homepage blueprint definition
homepage = Blueprint('homepage', __name__, static_folder='static', static_url_path='/homepage', template_folder='templates')


# Routes
@homepage.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        # date = request.args('date')
        time = request.values.get('time')
        num_people = request.values.get('num_people')
        location = request.values.get('location')
        print('Yuli')
        # free_tables = dbManager.fetch('SELECT l.city,r.restaurants_name,r.rating,r.website,r.phone_number,t.table_ID,t.type FROM tabels as t join restaurants as r on t.restaurants_ID = r.restaurants_ID join locations as l on l.location_ID = r.location_ID where t.number_of_diners >= %s and l.city like %s and t.table_ID not in (select b.table_ID from group4.bookings as b where b.booking_Date = %s and b.booking_Time = %s)',(num_people,location,date,time))
        # free_tables = dbManager.fetch('SELECT * FROM table WHERE city=%s AND number_of_diners >= %s AND status == 0', (location,num_people))
        # print(date)
        print(time)
        print(num_people)
        print(location)
        # print(free_tables)
        # if free_tables:
        #     return redirect(url_for('SearchResults.index',free_tables = free_tables ))
        # else:
        #     return render_template('SearchResults.html', message="Please accept our apologies, but there are currently no open tables in your search location")
    return render_template('homepage.html')


@homepage.route('/homepage')
@homepage.route('/home')
def redirect_homepage():
    return redirect(url_for('homepage.index'))
