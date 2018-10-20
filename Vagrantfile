# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # 16.04.5 LTS (GNU/Linux 4.4.0-135-generic x86_64)
  # config.vm.box = "ubuntu/xenial64"
  # 18.04.1 LTS (GNU/Linux 4.15.0-34-generic x86_64)
  config.vm.box = "ubuntu/bionic64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # ローカル環境から、192.168.33.10でウェブページアクセスできるようにする
  config.vm.network "private_network", ip: "192.168.33.10"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.synced_folder "./workspace", "/home/vagrant/workspace"
  # config.vm.synced_folder "./docker_web", "/home/vagrant/docker_web"

  # config.vm.provider :virtualbox do |vb|
  #   vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate//home/vagrant/workspace","1"]
  # end

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "10240", # メモリは10GB
      "--cpus", "2", # CPUは2つ
      "--ioapic", "on" # I/O APICを有効化
    ]
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # 【初期化】
  config.vm.provision :shell, path: "vagrant/bootstrap/init.sh"
  
  # 【ウェブサーバー】
  # # config.vm.provision :shell, path: "vagrant/bootstrap/ws_nginx.sh"

  # 【ウェブアプリケーション Scala + Play】
  config.vm.provision :shell, path: "vagrant/bootstrap/java.sh"
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/waf_play.sh"

  # 【データベース】
  # config.vm.provision :shell, path: "vagrant/bootstrap/db_mysql.sh"

  # 【Node.js】
  # config.vm.provision :shell, path: "vagrant/bootstrap/nodejs.sh"

  # 【ブロックチェーン】
  # config.vm.provision :shell, path: "vagrant/bootstrap/bc_ethereum.sh"

  # 【Scala】
  config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/scala.sh"

  # 【Virtual Machine】
  config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/vm_docker.sh"
  # config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/vm_kubernetes.sh"

  # 【Download】
  config.vm.provision :shell, privileged: false, path: "vagrant/bootstrap/download.sh"

  # 【チェック】
  config.vm.provision :shell, path: "vagrant/bootstrap/check.sh"
end
