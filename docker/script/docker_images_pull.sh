echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m = image pull                    = \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker pull kdelfour/cloud9-docker

docker pull kurosawakuro/ruby_on_rails_image 
docker pull kurosawakuro/mysql_image
docker pull phpmyadmin/phpmyadmin
docker pull kurosawakuro/cloud9_image
docker pull portainer/portainer

# docker pull kurosawakuro/php_image