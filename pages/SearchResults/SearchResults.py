from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
import datetime
# SearchResults blueprint definition
SearchResults = Blueprint('SearchResults', __name__, static_folder='static', static_url_path='/SearchResults', template_folder='templates')


# Routes
@SearchResults.route('/SearchResults', methods=['GET', 'POST'])
def index():
# Filtering the user requests
    if request.method == 'POST':

        tables_after_filters = []
        seating_opt = str(request.values.get('seating_opt'))
        cuisine = request.values.get('cuisine')
        rating = request.values.get('rating')
        tables = session['free_tables']

        if seating_opt and cuisine and rating:
            for table in tables:
                if table[9] == seating_opt and table[2] == cuisine and table[3] >= rating:
                    tables_after_filters.append(table)
            if tables_after_filters:
                return render_template('SearchResults.html', tables_after_filters=tables_after_filters)
            else:
                return render_template('SearchResults.html',
                                       filter_message="Please accept our apologies, but there are no restaurants that meet your filter criteria")

        elif  seating_opt and cuisine:
            for table in tables:
                if table[9] == seating_opt and table[2] == cuisine:
                    tables_after_filters.append(table)
            if tables_after_filters:
                return render_template('SearchResults.html', tables_after_filters=tables_after_filters)
            else:
                return render_template('SearchResults.html',
                                       filter_message="Please accept our apologies, but there are no restaurants that meet your filter criteria")

        elif seating_opt:
            for table in tables:
                if table[9] == seating_opt:
                    tables_after_filters.append(table)
            if tables_after_filters:
                return render_template('SearchResults.html', tables_after_filters=tables_after_filters)
            else:
                return render_template('SearchResults.html',
                                       filter_message="Please accept our apologies, but there are no restaurants that meet your filter criteria")

        else:
            return render_template('SearchResults.html', tables_after_filters=tables)


    else:
        return render_template('SearchResults.html')