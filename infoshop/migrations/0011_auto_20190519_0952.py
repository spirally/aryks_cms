# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-05-19 02:52
from __future__ import unicode_literals

import ckeditor.fields
from django.db import migrations, models
import easy_thumbnails.fields
import infoshop.models


class Migration(migrations.Migration):

    dependencies = [
        ('infoshop', '0010_auto_20190518_2233'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='content_program',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Программа курса'),
        ),
        migrations.AlterField(
            model_name='category',
            name='content',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Контент'),
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
            name='content',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Контент'),
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