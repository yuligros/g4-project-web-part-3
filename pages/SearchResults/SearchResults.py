from flask import Blueprint, render_template

# SearchResults blueprint definition
SearchResults = Blueprint('SearchResults', __name__, static_folder='static', static_url_path='/SearchResults', template_folder='templates')


# Routes
@SearchResults.route('/SearchResults')
def index():
    return render_template('SearchResults.html')
