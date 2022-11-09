from django.db import models

# Create your models here.

class Feedback(models.Model):
    fid = models.AutoField(primary_key=True)
    uid = models.IntegerField()
    feedback = models.CharField(max_length=50)
    reply = models.CharField(max_length=50)
    date = models.DateField()

    class Meta:
        managed = False
        db_table = 'feedback'