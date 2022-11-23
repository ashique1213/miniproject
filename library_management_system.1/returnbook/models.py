from django.db import models
from book_d.models import BookD
# Create your models here.

class Return(models.Model):
    return_id = models.AutoField(primary_key=True)
    # b_id = models.IntegerField()
    b=models.ForeignKey(BookD,to_field='b_id',on_delete=models.CASCADE)
    date = models.DateField()
    status = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'return'