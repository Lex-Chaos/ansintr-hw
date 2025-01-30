FROM centos:7

RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS*.repo
RUN sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS*.repo
RUN sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS*.repo

RUN yum update -y

RUN yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel xz-devel wget make -y

WORKDIR /usr/src
RUN wget https://www.python.org/ftp/python/3.7.11/Python-3.7.11.tgz
RUN tar xzf Python-3.7.11.tgz

WORKDIR /usr/src/Python-3.7.11
RUN ./configure --enable-optimizations
RUN make altinstall
RUN rm /usr/src/Python-3.7.11.tgz

CMD ["bash"]