FROM balenalib/raspberry-pi-debian:latest

MAINTAINER Vithar Me <vithar@vithar.me>

RUN apt-get update && apt-get upgrade -y && apt-get install -y --fix-missing \
    ssmtp \
    mailutils \
    mpack \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*
COPY mail.sh /
RUN chmod +x /mail.sh
CMD ["./mail.sh"]
