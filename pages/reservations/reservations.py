from flask import Blueprint, render_template, redirect, url_for, session
from utilities.db.db_manager import dbManager

# homepage blueprint definition
reservations = Blueprint('reservations', __name__, static_folder='static', static_url_path='/reservations', template_folder='templates')


# Routes
@reservations.route('/reservations', methods=['GET'])
def index():
    if(session['logged_in']):
        user_id=session['id']
        print(user_id)
        user_res = dbManager.fetch("select b.user_ID, r.restaurants_name, b.booking_Date, b.booking_Time, b.number_of_diners, r.website, r.phone_number, l.city from bookings as b join tabels as t on b.table_ID = t.table_ID join restaurants as r on t.restaurants_ID = r.restaurants_ID join locations as l on r.location_ID = l.location_ID where b.user_ID =('%s');"%user_id)
        print(user_res)
        return render_template('reservations.html', reservations = user_res)
    else:
        return render_template('reservations.html', message="Please sign in to view your reservations")
    # return render_template('reservations.html')


