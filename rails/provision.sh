#! /bin/bash
if ! [ `which ansible` ]; then
    apt-get update -y
    apt-get install -y ansible
fi

ansible-playbook -i /vagrant/hosts /vagrant/main.yml
