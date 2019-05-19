# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-05-18 15:12
from __future__ import unicode_literals

from django.db import migrations, models
import easy_thumbnails.fields
import infoshop.models


class Migration(migrations.Migration):

    dependencies = [
        ('infoshop', '0008_auto_20190518_1538'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='forfree',
            field=models.BooleanField(default=False, verbose_name='Бесплатно'),
        ),
        migrations.AlterField(
            model_name='category',
            name='image',
            field=easy_thumbnails.fields.ThumbnailerImageField(blank=True, default='', upload_to=infoshop.models.make_upload_path, verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='category',
            name='wall',
            field=easy_thumbnails.fields.ThumbnailerImageField(blank=True, default='', upload_to=infoshop.models.make_upload_path, verbose_name='Обложка'),
        ),
        migrations.AlterField(
            model_name='images',
            name='image',
            field=models.ImageField(blank=True, default='', upload_to=infoshop.models.make_upload_path, verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=easy_thumbnails.fields.ThumbnailerImageField(blank=True, default='', upload_to=infoshop.models.make_upload_path, verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='product',
            name='wall',
            field=easy_thumbnails.fields.ThumbnailerImageField(blank=True, default='', upload_to=infoshop.models.make_upload_path, verbose_name='Обложка'),
        ),
    ]