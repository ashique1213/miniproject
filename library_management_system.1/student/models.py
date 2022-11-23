from django.db import models

# Create your models here.

class Student(models.Model):
    stud_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    reg_no = models.CharField(max_length=25)
    sem = models.CharField(max_length=5)
    roll_no = models.CharField(max_length=25)
    password = models.CharField(max_length=25)
    phone = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'student'
