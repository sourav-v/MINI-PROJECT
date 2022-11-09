import imp
from pyexpat import model
from re import I
from django.db import models
from registration.models import Registration
from product.models import Product
from packages.models import Packages

# Create your models here.
class Payment(models.Model):
    payment_id = models.AutoField(primary_key=True)
    uid = models.IntegerField()
    # u=models.ForeignKey(Registration,on_delete=models.CASCADE)
    product_id = models.IntegerField()
    # product=models.ForeignKey(Product,on_delete=models.CASCADE)
    package_id = models.IntegerField()
    # package=models.ForeignKey(Packages,on_delete=models.CASCADE)
    card_number = models.IntegerField()
    cardholder_name = models.CharField(max_length=30)
    cvv = models.IntegerField()
    amount = models.IntegerField()
    date = models.DateField()
    status = models.CharField(max_length=20)

    class Meta:

        managed = False
        db_table = 'payment'
