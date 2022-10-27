from django.db import models

# Create your models here.

class Return(models.Model):
    return_id = models.AutoField(primary_key=True)
    request_id = models.IntegerField()
    date = models.DateField()
    status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'return'