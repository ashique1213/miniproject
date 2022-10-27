from django.db import models

# Create your models here.
class BookD(models.Model):
    b_id = models.AutoField(primary_key=True)
    book_id = models.CharField(max_length=25)
    name = models.CharField(max_length=25)
    author = models.CharField(max_length=25)
    edition = models.CharField(max_length=25)
    price = models.CharField(max_length=25)
    publication = models.CharField(max_length=25)
    pages = models.CharField(max_length=25)
    subject = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'book_d'

