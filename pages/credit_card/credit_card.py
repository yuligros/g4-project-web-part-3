from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
from utilities.db.db_manager import dbManager
import datetime
import time
from datetime import date

# credit_card  blueprint definition
credit_card = Blueprint('credit_card', __name__, static_folder='static', static_url_path='/credit_card', template_folder='templates')


# Routes
@credit_card.route('/credit_card', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':

              user_id = session['id']
              table_ID = request.values.get('table_ID')
              number_of_diners = request.values.get('number_of_diners')
              date_toDay = date.today()
              time_toDay = time.strftime("%H:%M:%S")
              booking_num = dbManager.fetch('''SELECT count(*) as num FROM bookings;''')
              booking_ID = booking_num[0].num + 2
              new_booking = dbManager.commit('INSERT INTO bookings VALUES(%s,%s,%s,%s,%s,%s)',
                                              (booking_ID,user_id, table_ID , date_toDay,time_toDay,number_of_diners))
              return render_template('credit_card.html')
    return render_template('credit_card.html')






