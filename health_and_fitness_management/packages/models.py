from django.db import models

# Create your models here.

class Packages(models.Model):
    pid = models.AutoField(primary_key=True)
    package_name = models.CharField(max_length=30)
    amount = models.IntegerField()
    duration = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'packages'
        
        
class UserPackage(models.Model):
    ur_id = models.AutoField(primary_key=True)
    uid = models.IntegerField()
    p_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'user_package'        