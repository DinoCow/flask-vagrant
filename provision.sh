#!/bin/sh

cd /vagrant/
sudo apt-get -y install python python-pip git 
sudo pip install virtualenv
cd contrajd
virtualenv venv

. venv/bin/activate

pip install Flask

python app.py &

