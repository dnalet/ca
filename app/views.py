import datetime

import pymysql

from app import app
from flask import render_template, request, redirect, flash
from .forms import AddIssueForm

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='root',
                             db='spidermancomics',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)


def sql_get(sql):
    with connection.cursor() as cursor:
        cursor.execute(sql)
        result = cursor.fetchall()
        return result


def sql_exec(sql):
    with connection.cursor() as cursor:
        cursor.execute(sql)
    connection.commit()


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
        'INNER JOIN issue ON issue.seriesID = series.seriesID '
        'GROUP BY series.seriesName ORDER BY seriesID'
    )
    return render_template('index.html',
                           series_list=series)


@app.route('/series/<series_id>/')
def issues(series_id):
    issue_list = sql_get(
        'SELECT * FROM issue INNER JOIN series '
        'ON issue.seriesID = series.seriesID '
        'WHERE series.seriesID = {} ORDER BY issue.issueNum'.format(series_id)
    )
    return render_template('series.html',
                           issue_list=issue_list)


@app.route('/issue/<issue_id>')
def issue(issue_id):
    def char_list(type):
        return sql_get(
            'SELECT charactersearth.earthID, timechar.charName, timechar.charID, timechar.typeOfChar, '
            'timechar.seriesID, timechar.issueID, timechar.timeID FROM charactersearth '
            'INNER JOIN ( '
            'SELECT characters.charName AS charName, characters.charID AS charID, '
            'timetable.typeOfChar AS typeOfChar, timetable.seriesID AS seriesID, '
            'timetable.issueID AS issueID, timetable.timeID AS timeID '
            'FROM characters INNER JOIN timetable ON timetable.charID=characters.charID '
            'ORDER BY issueID) AS timechar ON timechar.charID=charactersearth.charID '
            'WHERE timechar.issueID = "{}" AND timechar.typeOfChar LIKE "{}" '
            'ORDER BY typeOfChar, charID, charName'.format(issue_id, type)
        )

    issue_data = sql_get(
        'SELECT issue.issueName, issue.issueNum, issue.seriesID, issue.releaseDate, '
        'issue.imageURL, issue.issueID, series.numOfIssues FROM issue INNER JOIN series '
        'ON series.seriesID = issue.seriesID WHERE issueID={}'.format(
            issue_id)
    )
    protagonist_list = char_list('Protagonist')
    supporting_list = char_list('Supporting')
    antagonist_list = char_list('Antagonist')
    character_list = [protagonist_list, supporting_list, antagonist_list]
    return render_template('issue.html',
                           issue_data=issue_data,
                           character_list=character_list)


@app.route('/character/<character_id>')
def character(character_id):
    def appearence_get(type):
        return sql_get(
            'SELECT issue.issueNum, earthtimet.earthID, earthtimet.charName, earthtimet.charID, '
            'earthtimet.seriesID,'
            ' earthtimet.issueID, earthtimet.typeOfChar, issue.issueName, issue.releaseDate, '
            'issue.seriesID, issue.imageURL '
            'FROM ( '
            'SELECT charactersearth.earthID, timet.charName, timet.charID, timet.seriesID, '
            'timet.issueID, timet.typeOfChar '
            'FROM( '
            'SELECT characters.charName, characters.charID, timetable.seriesID, timetable.issueID,'
            ' timetable.typeOfChar '
            'FROM characters '
            'INNER JOIN timetable ON timetable.charID = characters.charID) AS timet '
            'INNER JOIN charactersearth ON charactersearth.charID = timet.charID) AS earthtimet '
            'INNER JOIN issue ON issue.issueID = earthtimet.issueID '
            'WHERE earthtimet.charID = {} AND earthtimet.typeOfChar LIKE "{}"'.format(
                character_id, type)
        )

    protagonist_appearance = appearence_get('Protagonist')
    supporting_appearance = appearence_get('Supporting')
    antagonist_appearance = appearence_get('Antagonist')
    appearances = [protagonist_appearance,
                   supporting_appearance,
                   antagonist_appearance]
    return render_template('character.html', appearences=appearances)


@app.route('/add/issue/', methods=['GET', 'POST'])
def add_issue():
    form = AddIssueForm()
    if form.validate_on_submit():
        issue_name = str(request.form['issueName'])
        issue_num = int(request.form['issueNum'])
        image_url = str(request.form['imageURL'])
        series_id = int(request.form['seriesID'])
        release_date = datetime.date.today().strftime('%Y-%m-%d')
        temp = "INSERT INTO issue(issueName, issueNum, seriesID, releaseDate, imageURL) " \
               "VALUES ('%s','%s','%s','%s','%s')" % \
               (issue_name, issue_num, series_id, release_date, image_url)
        sql_exec(temp)
        flash('Added!')
        return redirect('/')
    flash('Some input data was invalid!')
    return render_template('add_issue.html', form=form)


@app.route('/delete/issue/<issue_id>', methods=['GET', 'POST'])
def delete_issue(issue_id):
    sql_exec('DELETE FROM issue WHERE issueID = {} LIMIT 1'.format(issue_id))
    return redirect('/')
