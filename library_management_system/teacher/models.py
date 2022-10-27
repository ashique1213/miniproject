from django.db import models

# Create your models here.

class Teacher(models.Model):
    t_id = models.AutoField(primary_key=True)
    staff_id = models.CharField(max_length=20)
    name = models.CharField(max_length=25)
    password = models.CharField(max_length=25)
    phone = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'teacher'

