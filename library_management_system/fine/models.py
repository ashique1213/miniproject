from django.db import models

# Create your models here.

class Fine(models.Model):
    fine_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()
    fine = models.CharField(max_length=25)
    date = models.DateField()
    # type = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'fine'
