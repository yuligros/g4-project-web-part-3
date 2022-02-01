from flask import Blueprint, render_template, redirect, url_for, session


logout = Blueprint('logout',
                  __name__,
                  static_folder='static',
                  static_url_path='/logout',
                  template_folder='templates')

# Routes
@logout.route('/logout')
def index():
    session.clear()
    return redirect(url_for('homepage.index'))

