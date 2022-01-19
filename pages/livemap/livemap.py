from flask import Blueprint, render_template

# about blueprint definition
livemap = Blueprint('livemap', __name__, static_folder='static', static_url_path='/livemap', template_folder='templates')


# Routes
@livemap.route('/livemap')
def map():
    return render_template('livemap.html')

