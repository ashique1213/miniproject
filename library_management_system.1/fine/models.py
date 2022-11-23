from django.db import models
from login.models import Login
# Create your models here.
class Fine(models.Model):
    fine_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=25)
    fine = models.CharField(max_length=25)
    date = models.DateField()
    type = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'fine'

