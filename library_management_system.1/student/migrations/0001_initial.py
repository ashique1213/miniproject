# Generated by Django 3.2.16 on 2022-11-13 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('stud_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=25)),
                ('reg_no', models.CharField(max_length=25)),
                ('roll_no', models.CharField(max_length=25)),
                ('password', models.CharField(max_length=25)),
                ('phone', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'student',
                'managed': False,
            },
        ),
    ]