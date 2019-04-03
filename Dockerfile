FROM postgres:10.5

ENV DEBIAN_FRONTEND noninteractive
ENV DOWNLOAD_URL https://www.zombodb.com/releases/v10-1.0.3/zombodb_jessie_pg10-10-1.0.3_amd64.deb


RUN apt update
RUN apt install wget curl -y
RUN wget $DOWNLOAD_URL -o out.dpkg
RUN dpkg -i out.deb
