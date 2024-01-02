FROM nginx:1.19.6
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget\
    && apt install unzip -y
COPY entrypoint.sh /entrypoint.sh
#COPY developeranaz-rc.zip /developeranaz-rc.zip
#COPY rclone.conf /.config/rclone/rclone.conf
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
