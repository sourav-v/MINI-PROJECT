from django.db import models

# Create your models here.


class TrainingPlan(models.Model):
    pid = models.AutoField(primary_key=True)
    meal = models.CharField(max_length=30)
    foodchart = models.CharField(max_length=50)
    exercise = models.CharField(max_length=30)
    time = models.CharField(max_length=10)
    # foodchart_description = models.CharField(max_length=500)
    exercise_pattern_description = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'training_plan'