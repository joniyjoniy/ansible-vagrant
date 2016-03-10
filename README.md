# ansible-vagrant

## About
Ubuntu開発環境構築用playbook  
  
Windows環境でもprovisionできるようにGuest側でAnsibleを実行します。  
Rails開発環境とGo開発環境があります。

## Installation
- リポジトリとVagrantのセット
```
$ git clone https://github.com/joniyjoniy/ansible-vagrant.git
$ cd ansible-vagrant
```

#### Vagrantfile修正

- 構築環境の選択  
デフォルトはRails開発環境を構築します。  
Goの場合は`settings/provision.sh`の  
`environment="rails"`を`environment="go"`に変更してください。  

- バージョンの指定  
`library/vars/`に各言語のバージョンを指定しているので、  
使用するバージョンに変更してください。  

- Vagrantの起動
```
$ vagrant up
```

## Requirements
- Vagrant
- VirtualBox
- Ansible

## Reference
https://github.com/gembaf/ansible-vagrant
