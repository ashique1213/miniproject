from django.db import models
from student.models import Student
# Create your models here.

class Feedback(models.Model):
    feed_id = models.AutoField(primary_key=True)
    stud_id = models.CharField(max_length=5)
    feedback = models.CharField(max_length=25)
    date = models.DateField()

    class Meta:
        managed = False
        db_table = 'feedback'
