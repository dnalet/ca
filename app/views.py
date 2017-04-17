from flask import render_template
from app import app
import pymysql

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='root',
                             db='spidermancomics',
                             cursorclass=pymysql.cursors.DictCursor)


def sql_get(sql):
    with connection.cursor() as cursor:
        cursor.execute(sql)
        result = cursor.fetchall()
        return result


@app.route('/')
def index():
    series = sql_get('SELECT * from series')
    series_id_list = sql_get('SELECT seriesID from series')
    series_to_id = zip(series_id_list, series)
    year = series[0]['releaseDate'].year
    return render_template('index.html',
                           page_title='Home - All Series',
                           series_list=series_to_id,
                           year=year)


@app.route('/series/<series_id>/')
def issues(series_id):
    return render_template('series.html',
                           page_title=series_name)


@app.route('/issue/<issue_id>')
def issue(issue_id):
    return render_template('series.html')


@app.route('/character/<character_id>')
def character(character_id):
    user = {'nickname': 'Miguel'}  # fake user
    posts = [  # fake array of posts
        {
            'author': {'nickname': 'John'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'nickname': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template('series.html',
                           title='Home',
                           user=user,
                           posts=posts)
