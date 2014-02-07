#!/bin/bash

apt-get update
apt-get install --yes \
    python-virtualenv \
    nginx-full \
    uwsgi \
    uwsgi-plugin-python \
    rabbitmq-server \
    postgresql-9.1 \
    postgresql-server-dev-9.1 \
    python2.7-dev \
    libxslt1-dev

cd /vagrant
virtualenv ve
cd /vagrant/ve
source bin/activate
cd /vagrant/IATI-Data-Quality
pip install -r requirements.txt

cp /vagrant/nginx.conf /etc/nginx/sites-available/default
cp /vagrant/tracker?.xml /etc/uwsgi/apps-available

service uwsgi restart
service nginx restart

