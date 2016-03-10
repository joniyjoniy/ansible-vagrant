# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'vmhost'
  config.vm.network :public_network, ip: '192.168.33.10'
  config.vm.network :forwarded_port, guest: 22, host: 10100, id: "ssh", auto_correct: true
  config.vm.network :forwarded_port, guest: 3000, host: 13000
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']

  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.vm.provision "shell", :path => "./settings/provision.sh"
end
