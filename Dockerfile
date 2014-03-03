# Punjab

FROM ubuntu:precise
MAINTAINER Matthew Seddon <dark@midnightreign.org>

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install python-twisted wget unzip

# punjab
RUN mkdir -p /src \
&& cat /proc/mounts > /etc/mtab \
&& cd /src \
&& wget --no-check-certificate https://github.com/twonds/punjab/archive/master.zip -O punjab-src.zip \
&& unzip punjab-src.zip \
&& cd punjab-master \
&& python setup.py install \
&& rm punjab.tac \
&& cd /

ADD ./punjab.tac /src/punjab-master/
ADD ./start.sh /
RUN chmod a+x /start.sh

EXPOSE 7070

#ENTRYPOINT ["/usr/bin/twistd", "-n", "-y /root/punjab.tac"]
CMD ["/start.sh"]

