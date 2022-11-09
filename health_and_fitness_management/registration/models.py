from django.db import models

# Create your models here.

class Registration(models.Model):
    uid = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=26)
    email_id = models.CharField(max_length=25)
    phone = models.IntegerField()
    address = models.CharField(max_length=50)
    gender = models.CharField(max_length=10)
    dob = models.DateField()
    height = models.FloatField()
    weight = models.FloatField()
    password = models.CharField(max_length=30)
    confirm_password = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'registration'