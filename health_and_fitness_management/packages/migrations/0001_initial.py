# Generated by Django 3.2.15 on 2022-10-25 10:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Packages',
            fields=[
                ('pid', models.AutoField(primary_key=True, serialize=False)),
                ('package_name', models.CharField(max_length=30)),
                ('amount', models.IntegerField()),
                ('duration', models.CharField(max_length=25)),
            ],
            options={
                'db_table': 'packages',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='UserPackage',
            fields=[
                ('ur_id', models.AutoField(primary_key=True, serialize=False)),
                ('uid', models.IntegerField()),
                ('p_id', models.IntegerField()),
            ],
            options={
                'db_table': 'user_package',
                'managed': False,
            },
        ),
    ]
