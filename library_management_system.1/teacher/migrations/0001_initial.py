# Generated by Django 3.2.16 on 2022-11-13 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('t_id', models.AutoField(primary_key=True, serialize=False)),
                ('staff_id', models.CharField(max_length=20)),
                ('name', models.CharField(max_length=25)),
                ('password', models.CharField(max_length=25)),
                ('phone', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'teacher',
                'managed': False,
            },
        ),
    ]
