from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
from utilities.db.db_manager import dbManager

# homepage blueprint definition
homepage = Blueprint('homepage', __name__, static_folder='static', static_url_path='/homepage', template_folder='templates')


# Routes
@homepage.route('/', methods=['GET', 'POST'])
def index():

    Top_3_Restaurants = dbManager.fetch('SELECT r.restaurants_name,r.rating,r.phone_number,r.img, r.website FROM restaurants as r order by rating desc limit 3')
    if request.values.get('submit_order'):
        return render_template('homepage.html', Top_3_Restaurants = Top_3_Restaurants, message = 'We have successfully saved your order, the restaurant is waiting to serve you')

    if request.method == 'POST':
        date = request.values.get('date')
        time = request.values.get('time')
        num_people = request.values.get('num_people')
        location = request.values.get('location')
        free_tables = dbManager.fetch('SELECT l.city,r.restaurants_name,r.cuisine,r.rating,r.website,r.phone_number,r.img,t.table_ID,t.number_of_diners,t.type FROM tabels as t join restaurants as r on t.restaurants_ID = r.restaurants_ID join locations as l on l.location_ID = r.location_ID where t.number_of_diners >= %s and l.city like %s and t.table_ID not in (select b.table_ID from group4.bookings as b where b.booking_Date = %s and b.booking_Time = %s)',(num_people,location,date,time))
        session['free_tables'] = free_tables
        print(free_tables)
        if free_tables:
            return render_template('SearchResults.html',tables = free_tables)
        else:
            return render_template('SearchResults.html', message="Please accept our apologies, but there are currently no open tables in your search location")

    return render_template('homepage.html', Top_3_Restaurants = Top_3_Restaurants)


@homepage.route('/homepage')
@homepage.route('/home')
def redirect_homepage():
    return redirect(url_for('homepage.index'))
