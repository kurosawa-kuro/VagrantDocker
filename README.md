# 構成
- config/ide  
IDEの設定

- docker  
Dockerの設定、操作

- vagrant  
Vagrantの操作

- Vagrantfile
Vagrantの設定

# Vagrant

## Vagrantで仮想環境作成、ログイン

- 環境作成

```
vagrant up
```

- ログイン

```
vagrant ssh
```

bootstrapが反応してprovisionされ、ミドルウェア・ライブラリがインストールされます。

## Vagrantで作成された仮想環境の停止、削除

- 停止

```
vagrant halt
```

- 削除

```
vagrant destroy
```

# Docker

```
echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナ ボリュームの削除             \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker-compose down -v

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナの停止と削除                 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m workspaceの作り直し                 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo rm -rf workspace/
mkdir workspace/
cp -rf docker_file/web/ruby/rails/Gemfile workspace/Gemfile
cp -rf docker_file/web/ruby/rails/Gemfile.lock workspace/Gemfile.lock

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナ作成、Rails新規プロジェクト作成 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker-compose run web rails new . --force --database=mysql
docker-compose build web

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m workspaceの権限をrootからuserに変更  \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo chown -R $USER:$USER workspace/

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m データベース作成                     \e[m'
echo -e $'\e[1;31m ================================= \e[m'
cp -f docker_file/database/mysql/database.yml workspace/config/database.yml

docker-compose up -d mysql
docker-compose run web bundle exec rake db:create

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナ起動、ウェブサーバー起動       \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker-compose up web mysql mysql-gui portainer cloud9
```

## Webページアクセス

### portainer.io  
- Vagrant  
192.168.33.10/9000

- Docker  
localhost/9000

### Ruby On Rails  
- Vagrant  
192.168.33.10/3000

- Docker  
localhost/3000

### phpMyAdmin  
- Vagrant  
192.168.33.10/8888

- Docker  
localhost/8888


### Cloud9  
- Vagrant  
192.168.33.10/9001

- Docker  
localhost/9001


# IDE
## Visual Studio Code
### SFTP

```
Ctrl+Shift+P on Windows/Linux open command palette, run SFTP: config command.
```
