# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ContraVM"

  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  
  config.vm.network :forwarded_port, guest: 5000, host: 8000

  config.vm.network :public_network

  config.vm.provider :virtualbox do |vb|
  # Don't boot with headless mode
	 vb.gui = false
 
  # Use VBoxManage to customize the VM. For example to change memory:
	 vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  

	config.vm.provision "shell", path: "provision.sh"


end
