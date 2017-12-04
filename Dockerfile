FROM ubuntu:xenial

EXPOSE 5901

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    xserver-xorg \
    tightvncserver \
    default-jre

ENV USER=root

RUN mkdir -p /root/.vnc \
        && chmod 700 /root/.vnc

RUN printf "root" | vncpasswd -f > /root/.vnc/passwd \
        && chmod 600 /root/.vnc/passwd

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /root
RUN touch .xsession

COPY apache-directory-studio.tar.gz .
RUN tar -xvf apache-directory-studio.tar.gz
