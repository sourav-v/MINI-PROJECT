from django.db import models

# Create your models here.

class Product(models.Model):
    product_id = models.AutoField(primary_key=True)
    type = models.CharField(max_length=25)
    product_name = models.CharField(max_length=30)
    image = models.CharField(max_length=40)
    price = models.IntegerField()
    expdate = models.DateField()
    stock = models.IntegerField()
    quantity = models.IntegerField()
    description = models.CharField(max_length=50)
    status = models.CharField(max_length=20)
    
    class Meta:
        managed = False
        db_table = 'product'
        