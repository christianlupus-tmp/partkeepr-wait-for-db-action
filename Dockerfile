FROM mariadb:10.1
RUN apt-get update && apt-get install inetutils-ping && apt-get clean
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
