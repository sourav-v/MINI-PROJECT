# Generated by Django 3.2.15 on 2022-10-25 10:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Login',
            fields=[
                ('login_id', models.AutoField(primary_key=True, serialize=False)),
                ('uid', models.IntegerField()),
                ('type', models.CharField(max_length=25)),
                ('email_id', models.CharField(max_length=25)),
                ('password', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'login',
                'managed': False,
            },
        ),
    ]
