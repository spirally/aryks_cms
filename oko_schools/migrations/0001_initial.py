# -*- coding: utf-8 -*-
# Generated by Django 1.11.21 on 2019-06-23 06:43
from __future__ import unicode_literals

import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion
import oko_schools.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Owner',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('deleted', models.DateTimeField(editable=False, null=True, verbose_name='Удалено')),
                ('published', models.BooleanField(db_index=True, default=False, verbose_name='Опубликовано')),
                ('name', models.CharField(db_index=True, max_length=250, verbose_name='Имя')),
                ('image', models.ImageField(blank=True, default='', upload_to=oko_schools.models.make_upload_path, verbose_name='Изображение')),
                ('description', models.TextField(blank=True, verbose_name='Описание')),
                ('city', models.CharField(blank=True, max_length=250, null=True, verbose_name='Город')),
                ('type', models.PositiveSmallIntegerField(choices=[(0, 'Школа'), (1, 'Автор')], default=0, editable=False)),
                ('title', models.CharField(blank=True, max_length=512, null=True, verbose_name='Расширенный заголовок')),
                ('title_menu', models.CharField(blank=True, max_length=512, null=True, verbose_name='Заголовок для меню')),
                ('slug', models.SlugField(blank=True, default='', max_length=300, verbose_name='Slug')),
                ('url', models.CharField(blank=True, default='', max_length=300, verbose_name='Url')),
                ('seo_keywords', models.CharField(blank=True, max_length=512, null=True, verbose_name='SEO ключевые слова')),
                ('seo_description', models.TextField(blank=True, max_length=512, null=True, verbose_name='SEO описание')),
                ('content', ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Контент')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Создано')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='Обновлено')),
                ('contact_website', models.CharField(blank=True, max_length=250, null=True, verbose_name='Официальный сайт')),
                ('contact_partner_site', models.CharField(blank=True, max_length=250, null=True, verbose_name='Партнерская программа')),
                ('contact_email', models.CharField(blank=True, max_length=250, null=True, verbose_name='Email')),
                ('contact_post_address', models.CharField(blank=True, max_length=250, null=True, verbose_name='Почтовый адрес')),
                ('contact_phone', models.CharField(blank=True, max_length=250, null=True, verbose_name='Контактный телефон')),
                ('contact_skype', models.CharField(blank=True, max_length=250, null=True, verbose_name='Skype')),
                ('contact_whatsapp', models.CharField(blank=True, max_length=250, null=True, verbose_name='WhatsApp')),
                ('contact_viber', models.CharField(blank=True, max_length=250, null=True, verbose_name='Viber')),
                ('contact_telegram', models.CharField(blank=True, max_length=250, null=True, verbose_name='Telegram')),
                ('social_youtube', models.CharField(blank=True, max_length=250, null=True, verbose_name='Канал на Youtube')),
                ('social_vk', models.CharField(blank=True, max_length=250, null=True, verbose_name='Страница Вконтакте')),
                ('social_fb', models.CharField(blank=True, max_length=250, null=True, verbose_name='Страница Facebook')),
                ('social_instagram', models.CharField(blank=True, max_length=250, null=True, verbose_name='Страница Instagram')),
                ('social_telegram', models.CharField(blank=True, max_length=250, null=True, verbose_name='Канал в Telegram')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='School',
            fields=[
                ('owner_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='oko_schools.Owner')),
            ],
            options={
                'verbose_name': 'Школа',
                'verbose_name_plural': 'Школы',
            },
            bases=('oko_schools.owner',),
        ),
    ]