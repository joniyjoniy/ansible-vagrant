#! /bin/bash
if ! [ `which ansible` ]; then
    apt-get update -y
    apt-get install -y ansible
fi

environment="rails"
ansible-playbook -i /vagrant/settings/hosts /vagrant/playbook/$environment.yml
