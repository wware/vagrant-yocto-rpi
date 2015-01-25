# -*- mode: ruby -*-
# vi: set ft=ruby :

# To run Yocto we need 50 GB, might need to do this:
# http://askubuntu.com/questions/317338/how-can-i-increase-disk-size-on-a-vagrant-vm

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.hostname = "localvm"
  config.vm.network "forwarded_port", guest: 80, host: 9080
  config.vm.network "forwarded_port", guest: 9000, host: 9000
  config.vm.network :private_network, type: "dhcp"
  config.ssh.forward_agent = true
  config.vm.provision :shell, path: "bootstrap.sh"

end
