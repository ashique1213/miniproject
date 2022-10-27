from django.db import models

# Create your models here.

class Feedback(models.Model):
    feed_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()
    feedback = models.CharField(max_length=25)
    date = models.DateField()

    class Meta:
        managed = False
        db_table = 'feedback'
