from flask_wtf import Form
from wtforms import StringField, DecimalField, IntegerField
from wtforms.validators import DataRequired, URL


class AddIssueForm(Form):
    issueName = StringField('Issue Name', validators=[DataRequired()])
    issueNum = DecimalField('Issue Number', validators=[DataRequired()])
    imageURL = StringField('Issue Image', validators=[URL()])
    seriesID = IntegerField('SeriesID of this Issue', validators=[DataRequired()])


class DeleteIssueForm(Form):
    issueID = IntegerField('Issue ID to delete', validators=[DataRequired()])
