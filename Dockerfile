 FROM ubuntu:16.04
 MAINTAINER Anvesh <vemulaanvesh9@gmail.com>
 RUN apt-get update
 RUN apt-get install -y apache2
 RUN apt-get update
 RUN apt-get install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
 RUN service apache2 restart
 COPY index.php /var/www/html/
