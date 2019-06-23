# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-05-19 07:32
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import easy_thumbnails.fields
import infoshop.models


class Migration(migrations.Migration):

    dependencies = [
        ('infoshop', '0013_auto_20190519_1112'),
    ]

    operations = [
        migrations.RenameField(
            model_name='producttype',
            old_name='ablative',
            new_name='name_ablative',
        ),
        migrations.RenameField(
            model_name='producttype',
            old_name='accusative',
            new_name='name_accusative',
        ),
        migrations.RenameField(
            model_name='producttype',
            old_name='dative',
            new_name='name_dative',
        ),
        migrations.RenameField(
            model_name='producttype',
            old_name='genitive',
            new_name='name_genitive',
        ),
        migrations.RenameField(
            model_name='producttype',
            old_name='prepositional',
            new_name='name_prepositional',
        ),
        migrations.AddField(
            model_name='producttype',
            name='name_nominative',
            field=models.CharField(max_length=250, null=True, verbose_name='Именительный падеж'),
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