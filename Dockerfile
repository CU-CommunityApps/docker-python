#python base
FROM dtr.cucloud.net/cs/apache22

# File Author / Maintainer
MAINTAINER Jay Hulslander <jdh34@cornell.edu>

RUN apt-get update
RUN apt-get install -y libapr1-dev
RUN apt-get install -y libaprutil1-dev
RUN apt-get install -y make
RUN apt-get install -y libssl-dev
RUN apt-get install -y python-dev
RUN apt-get install -y libapache2-mod-wsgi
RUN apt-get install -y python-pip build-essential
RUN apt-get install -y libldap2-dev
RUN apt-get install -y libsasl2-dev
RUN apt-get install -y freetds-dev
RUN apt-get install -y byacc flex

RUN apt-get clean

RUN pip install --index-url=https://pypi.python.org/simple/ --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install python-ldap
RUN pip install pyramid

RUN a2enmod wsgi
