from django.db import models
from product.models import Product
# Create your models here.


class PlaceOrder(models.Model):
    # product_id = models.IntegerField()
    product=models.ForeignKey(Product,on_delete=models.CASCADE)
    quantity = models.IntegerField()
    date = models.DateField()
    time = models.TimeField()
    status = models.CharField(max_length=20)
    uid = models.IntegerField()
    total = models.IntegerField()
    

    class Meta:
        managed = False
        db_table = 'place_order'