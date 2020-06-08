FROM nginx:latest
MAINTAINER sionmayol <melsionma@melsionma.org>
RUN apt-get update -y && apt-get upgrade -y && apt-get install inetutils-ping -y
