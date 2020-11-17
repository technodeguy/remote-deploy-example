FROM mysql:5.7
RUN mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql
ADD setup.sql /docker-entrypoint-initdb.d