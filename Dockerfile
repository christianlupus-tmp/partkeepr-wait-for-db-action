FROM mariadb:10.1
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
