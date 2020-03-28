# Generated by Django 3.0.4 on 2020-03-26 21:23

import django.contrib.gis.db.models.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('distributor', '0010_auto_20200326_2053'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hospital',
            name='location',
            field=django.contrib.gis.db.models.fields.PointField(help_text='To generate the map for your location', null=True, srid=4326),
        ),
    ]