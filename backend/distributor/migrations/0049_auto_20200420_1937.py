# Generated by Django 3.0.4 on 2020-04-20 19:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('distributor', '0048_auto_20200420_1922'),
    ]

    operations = [
        migrations.AlterField(
            model_name='distributiondetail',
            name='distribution',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='distribution_details', to='distributor.Distribution', verbose_name='Распределение'),
        ),
        migrations.AlterField(
            model_name='distributiondetail',
            name='donation',
            field=models.ForeignKey(help_text='Выберите ранее созданное пожертвование', on_delete=django.db.models.deletion.PROTECT, related_name='donation_details', to='distributor.Donation', verbose_name='Пожертвование)'),
        ),
    ]