from flask import Blueprint, render_template, redirect, url_for

# homepage blueprint definition
reservations = Blueprint('reservations', __name__, static_folder='static', static_url_path='/reservations', template_folder='templates')


# Routes
@reservations.route('/reservations')
def res():
    return render_template('reservations.html')


