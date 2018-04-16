# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Upload',
            fields=[
                ('id', models.AutoField(verbose_name='ID', primary_key=True, serialize=False, auto_created=True)),
                ('DownloadDocount', models.IntegerField(verbose_name='访问次数', default=0)),
                ('code', models.CharField(verbose_name='code', max_length=8)),
                ('Datetime', models.DateTimeField(verbose_name='添加时间', default=datetime.datetime.now)),
                ('path', models.CharField(verbose_name='下载路径', max_length=32)),
                ('name', models.CharField(verbose_name='文件名', default='', max_length=32)),
                ('Filesize', models.CharField(verbose_name='文件大小', max_length=10)),
                ('PCIP', models.CharField(verbose_name='IP地址', default='', max_length=32)),
            ],
            options={
                'verbose_name': 'download',
                'db_table': 'download',
            },
        ),
    ]
