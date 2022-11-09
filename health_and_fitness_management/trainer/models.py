from django.db import models

# Create your models here.

class AddTrainer(models.Model):
    tid = models.AutoField(primary_key=True)
    trainer_name = models.CharField(max_length=20)
    email_id = models.CharField(max_length=25)
    phone = models.IntegerField()
    gender = models.CharField(max_length=10)
    dob = models.DateField()
    experience = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'add_trainer'
