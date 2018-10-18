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

#### 環境作成  
bootstrapが反応してprovisionされ、ミドルウェア・ライブラリがインストールされます。
```
vagrant up
```

#### ログイン

```
vagrant ssh
```

#### IDE

- theia-ide

```
docker run -it -p 3000:3000 --expose 9229 -p 9229:9229 -v "$(pwd):/home/project:cached" theiaide/theia:next --inspect=0.0.0.0:9229
```

[192.168.33.10:3000](http://192.168.33.10:3000)

- Cloud9
 
```
docker run -it -d -p 80:80 kdelfour/cloud9-docker
```

[192.168.33.10:80](http://192.168.33.10:80)

#### Docker GUI Management Tool

- PORTAINER
 
```
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```

[192.168.33.10:9000](http://192.168.33.10:9000)

## Vagrantで作成された仮想環境の停止、削除

#### 停止

```
vagrant halt
```

#### 削除

```
vagrant destroy
```

# Docker

```
# workspace作成
sudo rm -rf workspace/
mkdir workspace/
cp -rf docker_file/web/ruby/rails/Gemfile workspace/Gemfile
cp -rf docker_file/web/ruby/rails/Gemfile.lock workspace/Gemfile.lock

# コンテナ作成、Rails新規プロジェクト作成 
docker-compose run web rails new . --force --database=mysql
docker-compose build web

# workspaceの権限をrootからuserに変更
sudo chown -R $USER:$USER workspace/

# データベース作成 
cp -f docker_file/database/mysql/database.yml workspace/config/database.yml

docker-compose up -d mysql
docker-compose run web bundle exec rake db:create

# コンテナ起動、ウェブサーバー起動 
docker-compose up web mysql mysql-gui portainer cloud9
```

## Webページアクセス

### portainer.io  
- Vagrant  
[192.168.33.10:9000](http://192.168.33.10:9000)

- Docker  
[localhost:9000](http://localhost:9000)

### Ruby On Rails  
- Vagrant  
[192.168.33.10:3000](http://192.168.33.10:3000)

- Docker  
[localhost:3000](http://localhost:3000)

### phpMyAdmin  
- Vagrant  
[192.168.33.10:8888](http://192.168.33.10:8888)

- Docker  
[localhost:8888](http://localhost:8888)

### Cloud9  
- Vagrant  
[192.168.33.10:9001](http://192.168.33.10:9001)

- Docker  
[localhost:9001](http://localhost:9001)


# IDE
## Visual Studio Code

### lang
- Docker

### Other

- sftp

```
Ctrl+Shift+P on Windows/Linux open command palette, run SFTP: config command.
```

- GitLens
- Git History


