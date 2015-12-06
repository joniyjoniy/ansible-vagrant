# ansible-vagrant

## About

vagrantのセットアップ用のansible-playbook  
goはgo言語開発環境  
railsはrails開発環境(まだできてない)

## Installation
- リポジトリとvagrantのセット
```
$ mkdir test
$ cd test
$ git clone https://github.com/gembaf/ansible-vagrant.git
$ vagrant init ubuntu/trusty64
```

- Vagrantfileへの追記
```
Vagrant.configure(2) do |config|

  ……

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible-vagrant/main.yml"
  end
end
```

- vagrantの起動
```
$ vagrant up --provider virtualbox
```

## Requirements
- vagrant
- VirtualBox
- ansible

## Reference
https://github.com/gembaf/ansible-vagrant