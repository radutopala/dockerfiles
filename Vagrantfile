# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |vb|
    vb.name = "docker"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.ssh.forward_agent = true
  config.vm.synced_folder '../', '/vagrant', type: "nfs", mount_options: ["rw", "vers=3", "tcp", "fsc"]

  config.vbguest.auto_update = true

  config.vm.box_check_update = false

  config.vm.hostname = "docker"

  config.vm.network "forwarded_port", guest: 80, host: 5555
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 15672, host: 15672
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "private_network", ip: "192.168.1.200"
  config.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", ip: "192.168.0.200"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
  end
end
