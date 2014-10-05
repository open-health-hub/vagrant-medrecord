# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

# Base Official Ubuntu Server 14.04 LTS (Trusty Tahr) builds
  config.vm.box = "ubuntu/trusty64"

# 2GB RAM recommended as mvn / gradle will fail with much less
  config.vm.provider "virtualbox" do |v|
  v.memory = 2048
  v.cpus = 2
  end

# Set additional portforwarding for MedRecord service when built
  config.vm.network "forwarded_port", guest: 8100, host: 8100

  config.vm.provision "ansible" do |ansible|
  #ansible.verbose = "vvv"
  ansible.playbook = "provisioning/playbook.yml"
  end

end
