ARG MYSQL_VERSION=8.0
FROM mysql:${MYSQL_VERSION}

MAINTAINER Mahmoud Zalt <mahmoud@zalt.me>

#####################################
# Set Timezone
#####################################

ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql/

ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD Cherokee.sql /docker-entrypoint-initdb.d/

RUN /bin/bash -c "/usr/bin/mysqld_safe &" && \
  sleep 5 && \
  mysql -uroot -proot  -e "CREATE DATABASE Cherokee" && \
  sleep 5 && \
  mysql -uroot -proot Cherokee < /docker-entrypoint-initdb.d/Cherokee.sql

CMD ["mysqld"]

EXPOSE 3306