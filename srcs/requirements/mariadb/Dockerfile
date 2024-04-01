FROM debian:oldstable

RUN apt-get update && apt-get install -y mariadb-server vim

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/scriptDB.sh /scriptDB.sh
RUN mkdir -p /var/run/mysqld
RUN mkdir -p /run/mysqld
RUN chmod 777 /var/run/mysqld
RUN chmod 777 /run/mysqld
RUN chmod +x ./scriptDB.sh
# CMD [ "./scriptDB" ]


# ENTRYPOINT [ "bash" ]
ENTRYPOINT [ "./scriptDB.sh" ]