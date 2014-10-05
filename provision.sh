# sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password grant5access'
# sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password grant5access'
# sudo apt-get update
# sudo apt-get -y install mysql-server-5.5 php5-mysql apache2 php5

# if [ ! -h /var/www ]; 
# then 
#     mkdir /vagrant/public
#     rm -rf /var/www 
#     ln -s /vagrant/public /var/www
#     a2enmod rewrite
#     sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default
#     service apache2 restart
# fi

# if [ ! -d /vagrant/public/wp-admin ];
# then
#     cd /vagrant/public
#     wget http://wordpress.org/latest.tar.gz  
#     tar xvf latest.tar.gz 
#     mv wordpress/* ./  
#     rmdir ./wordpress/  
#     rm -f latest.tar.gz
# fi

# if [ ! -f /var/log/databasesetup ];
# then
#     mysql -u root -pgrant5access -e "CREATE DATABASE wordpress;"
#     mysql -u root -pgrant5access -e "CREATE USER 'mywpuser'@'localhost' IDENTIFIED BY 'mywppass';"
#     mysql -u root -pgrant5access -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'mywpuser'@'localhost';"
#     mysql -u root -pgrant5access -e "FLUSH PRIVILEGES;"
#     touch /var/log/databasesetup
# fi