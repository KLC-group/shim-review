FROM ubuntu:18.04

COPY . /

RUN apt-get update
RUN apt-get install -y build-essential gnu-efi git bsdmainutils 
RUN /app.sh
