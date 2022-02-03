from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
import datetime
# SearchResults blueprint definition
SearchResults = Blueprint('SearchResults', __name__, static_folder='static', static_url_path='/SearchResults', template_folder='templates')


# Routes
@SearchResults.route('/SearchResults', methods=['GET', 'POST'])
def index():

    if request.method == 'POST':

        tables_after_filters = []
        seating_opt = str(request.values.get('seating_opt'))
        cuisine = request.values.get('cuisine')
        rating = request.values.get('rating')
        tables = session['free_tables']

        for table in tables:
            if table[9] == seating_opt and table[2] == cuisine and table[3] >= rating:
                tables_after_filters.append(table)

        print(tables_after_filters)
        return  render_template('SearchResults.html', tables_after_filters = tables_after_filters)
    else:
        return render_template('SearchResults.html')

