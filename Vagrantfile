# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # 16.04.5 LTS (GNU/Linux 4.4.0-135-generic x86_64)
  # config.vm.box = "ubuntu/xenial64"
  # 18.04.1 LTS (GNU/Linux 4.15.0-34-generic x86_64)
  config.vm.box = "ubuntu/bionic64"

  # ローカル環境から、192.168.33.10でウェブページアクセスできるようにする
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "10240", # メモリは10GB
      "--cpus", "2", # CPUは2つ
      "--ioapic", "on" # I/O APICを有効化
    ]
  end

  # 【初期化】
  config.vm.provision :shell, path: "vagrant/bootstrap/init.sh"

  # 【ウェブサーバー】
  # # config.vm.provision :shell, path: "vagrant/bootstrap/ws_nginx.sh"

  # 【ウェブアプリケーション Scala + Play】
  # config.vm.provision :shell, path: "vagrant/bootstrap/java.sh"
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/waf_play.sh"

  # 【データベース】
  # config.vm.provision :shell, path: "vagrant/bootstrap/db_mysql.sh"

  # 【Node.js】
  # config.vm.provision :shell, path: "vagrant/bootstrap/nodejs.sh"

  # 【Posgres】
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/postgres.sh"

  # 【MongoDB】
  # config.vm.provision :shell, path: "vagrant/bootstrap/db_mongodb.sh"

  # 【ブロックチェーン】
  # config.vm.provision :shell, path: "vagrant/bootstrap/bc_ethereum.sh"

  # 【Scala】
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/scala.sh"

  # 【Virtual Machine】
  config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/vm_docker.sh"
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/vm_kubernetes.sh"

  # 【Upload File】
  config.vm.provision "file", source: "./docker", destination: "$HOME/docker"
  config.vm.provision "file", source: "./setup", destination: "$HOME/setup"

  # 【チェック】
  config.vm.provision :shell, path: "vagrant/bootstrap/check.sh"
end
