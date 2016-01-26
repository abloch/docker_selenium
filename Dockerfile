FROM phusion/baseimage
MAINTAINER <Akiva Bloch "akiva@atar.me">

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install --force-yes -y python-pip npm libfontconfig
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install phantomjs
RUN mkdir -p /opt/python
ADD requirements.txt /opt/python/requirements.txt
ADD main.py /opt/python/main.py
RUN pip install -r /opt/python/requirements.txt 

CMD pip install -r /opt/python/requirements.txt ; python /opt/python/main.py
