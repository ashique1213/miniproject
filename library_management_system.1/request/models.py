from django.db import models
from book_d.models import BookD

# Create your models here.

class Request(models.Model):
    request_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()

    b=models.ForeignKey(BookD,to_field='b_id',on_delete=models.CASCADE)
    # b_id = models.IntegerField()
    request_date = models.DateField()
    status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'request'
