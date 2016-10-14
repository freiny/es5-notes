FROM alpine:3.4

RUN apk update && \
apk add nodejs inotify-tools && \
apk add mariadb mariadb-client
RUN mysql_install_db --user=mysql
# ENV TERM xterm
# COPY db/conf/* /etc/mysql/

ENV APP_ENVIRONMENT dev
ENV HTTP_PORT 3000
ENV DB_PORT 3306
EXPOSE 3000 3306

CMD ["sh", "-c", "source /home/init dev"]
