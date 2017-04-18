from flask_wtf import Form
from wtforms import StringField
from wtforms.validators import DataRequired


class AddIssueForm(Form):
    issueName = StringField('Issue Name', validators=[DataRequired()])
    issueNum = StringField('Issue Number', validators=[DataRequired()])
    imageURL = StringField('Issue Image', validators=[DataRequired()])
    seriesID = StringField('SeriesID of this Issue', validators=[DataRequired()])


class DeleteIssueForm(Form):
    issueID = StringField('Issue ID to delete', validators=[DataRequired()])
    