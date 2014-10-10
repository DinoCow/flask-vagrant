#!/bin/sh
if [ -d "/vagrant/contrajd/venv" ]
then
   cd /vagrant/contrajd
   . venv/bin/activate

   python app &
   
else
	cd /vagrant/
	sudo apt-get -y install python python-pip git 
	sudo pip install virtualenv
	cd contrajd
	virtualenv venv

	. venv/bin/activate

	pip install Flask

	python app.py &
fi




