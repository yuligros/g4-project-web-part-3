from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
import datetime
# SearchResults blueprint definition
SearchResults = Blueprint('SearchResults', __name__, static_folder='static', static_url_path='/SearchResults', template_folder='templates')


# Routes
@SearchResults.route('/SearchResults', methods=['GET', 'POST'])
def index():

    if request.method == 'POST':

        seating_opt = request.values.get('seating_opt')
        regions = request.values.get('regions')
        cuisine = request.values.get('cuisine')
        rating = request.values.get('rating')
        tables = request.values.get('tables')

        print(seating_opt)
        print(regions)
        print(cuisine)
        print(rating)
        print(tables)

        return render_template('SearchResults.html')


    return render_template('SearchResults.html')
