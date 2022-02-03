from flask import Blueprint, render_template, redirect, request, url_for, redirect, session
import datetime
# SearchResults blueprint definition
SearchResults = Blueprint('SearchResults', __name__, static_folder='static', static_url_path='/SearchResults', template_folder='templates')


# Routes
@SearchResults.route('/SearchResults', methods=['GET', 'POST'])
def index():

    if request.method == 'POST':

        Soption = request.values.get('Soption')
        Region = request.values.get('Region')
        CSN = request.values.get('CSN')
        RTG = request.values.get('RTG')
        tables = request.values.get('tables')

        print(Soption)
        print(Region)
        print(CSN)
        print(RTG)
        print(tables)

        return render_template('SearchResults.html')


    return render_template('SearchResults.html')
