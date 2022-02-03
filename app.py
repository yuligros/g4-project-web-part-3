from flask import Flask, session

###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages

## Homepage
from pages.homepage.homepage import homepage
app.register_blueprint(homepage)

## About
from pages.about.about import about
app.register_blueprint(about)

## Search Results
from pages.SearchResults.SearchResults import SearchResults
app.register_blueprint(SearchResults)

## reservations
from pages.reservations.reservations import reservations
app.register_blueprint(reservations)

## signin
from pages.signin.signin import signin
app.register_blueprint(signin)

## signup
from pages.signup.signup import signup
app.register_blueprint(signup)

## terms
from pages.terms.terms import terms
app.register_blueprint(terms)

## livemap
from pages.livemap.livemap import livemap
app.register_blueprint(livemap)

## logout
from pages.logout.logout import logout
app.register_blueprint(logout)

## Credit curd
from pages.credit_card.credit_card import credit_card
app.register_blueprint(credit_card)

## Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)

###### Components
## Main menu
from components.main_menu.main_menu import main_menu
app.register_blueprint(main_menu)
