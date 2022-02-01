from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
from utilities.db.db_manager import dbManager
import datetime
# creditcard  blueprint definition
credit_card = Blueprint('credit_card', __name__, static_folder='static', static_url_path='/credit_card', template_folder='templates')


# Routes
@credit_card.route('/credit_card', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
              user_id = session['id']
              table_ID = request.values.get('table_ID')
              number_of_diners = request.values.get('number_of_diners')
              date = datetime.datetime.now().replace(microsecond=0)
              time = datetime.datetime.now().replace(microsecond=0)
              print(user_id)
              print(table_ID)
              print(number_of_diners)
              print(date)
              print(time)
              dbManager.commit('INSERT INTO bookings(user_ID, table_ID, booking_Date, booking_Time, number_of_diners)'
                               'VALUES(%s,%s, %s,%s)',
                               (user_id, table_ID, date, time,number_of_diners))

              return render_template('credit_card.html', message = "Your booking has been completed. The restaurant is looking forward to having you")
    return render_template('credit_card.html')






