#!/bin/sh
if [ -d "/installed" ]
then
   cd /vagrant/contrajd

   python app.py &
   
else
	cd /vagrant/
	sudo apt-get -y install python python-pip pdftk
	cd contrajd

	sudo pip install Flask 
	sudo pip install requests
	sudo pip install -U flask-cors
	sudo pip install boto
	sudo pip install fdfgen

	sudo pip install requests --upgrade
	
	sudo mkdir "/installed" 
	mkdir "/tmp/form"
	mkdir "/tmp/pdf"
	mkdir "/tmp/fdf"

	sudo chmod 777 /tmp/form /tmp/pdf tmp/fdf
	cp /vagrant/*.pdf /tmp/form
	python app.py &
fi