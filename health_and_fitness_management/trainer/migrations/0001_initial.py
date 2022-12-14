# Generated by Django 3.2.15 on 2022-10-25 10:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AddTrainer',
            fields=[
                ('tid', models.AutoField(primary_key=True, serialize=False)),
                ('trainer_name', models.CharField(max_length=20)),
                ('email_id', models.CharField(max_length=25)),
                ('phone', models.IntegerField()),
                ('gender', models.CharField(max_length=10)),
                ('dob', models.DateField()),
                ('experience', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'add_trainer',
                'managed': False,
            },
        ),
    ]
