from flask import Blueprint, render_template, redirect, url_for

# creditcard  blueprint definition
credit_card = Blueprint('credit_card', __name__, static_folder='static', static_url_path='/credit_card', template_folder='templates')


# Routes
@credit_card.route('/credit_card')
def index():
    return render_template('credit_card.html')






