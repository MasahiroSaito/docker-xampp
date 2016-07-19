FROM m411momo/centos7:1.0
MAINTAINER MasahiroSaito (m411momo)

RUN wget -P /home https://www.apachefriends.org/xampp-files/5.5.37/xampp-linux-x64-5.5.37-0-installer.run
RUN \
chmod 755 /home/xampp-linux-x64-5.5.37-0-installer.run && \
/home/xampp-linux-x64-5.5.37-0-installer.run

RUN sed -i.bak s'/Require local/Require all granted/g' /opt/lampp/etc/extra/httpd-xampp.conf

ENTRYPOINT /opt/lampp/xampp start && /bin/zsh
