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


@app.context_processor
def utility_processor():
    def sql_query_grab(sql_query):
        return sql_get(sql_query)

    return dict(sql_get=sql_query_grab)


@app.route('/')
def index():
    series = sql_get(
        'SELECT series.seriesID, series.seriesName, series.releaseDate, '
        'series.endDate, series.numOfIssues, issue.imageURL FROM series '
        'INNER JOIN issue ON issue.seriesName = series.seriesName '
        'GROUP BY series.seriesName ORDER BY seriesID'
    )
    year = series[0]['releaseDate'].year
    return render_template('index.html',
                           page_title='Home - All Series',
                           series_list=series,
                           year=year)


@app.route('/series/<series_id>/')
def issues(series_id):
    issue_list = sql_get(
        'SELECT * FROM issue INNER JOIN series '
        'ON issue.seriesName = series.seriesName '
        'WHERE series.seriesID = {} ORDER BY issue.issueNum'.format(series_id)
    )
    return render_template('series.html',
                           issue_data=issue_list,
                           page_title='{} Issues'.format(issue_list[0]['seriesName']))


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
