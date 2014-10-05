# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
  v.memory = 2048
  v.cpus = 2
  end

  config.vm.provision "ansible" do |ansible|
  #ansible_ssh_user = "vagrant"
  ansible.verbose = "vvv"
  #ansible.sudo = "true"
  ansible.playbook = "provisioning/playbook.yml"
  end

end
