FROM nginx:latest
MAINTAINER sionmayol <melsionma@gmail.com>
RUN apt-get update -y && apt-get upgrade -y && apt-get install inetutils-ping -y
COPY /prj1 /usr/share/nginx/html
RUN cd /usr/share/nginx/html \
	&& mv index.html index1.html \
	&& mv prova.html index.html \
	&& cd /usr/share/nginx \
	&& chown -R nginx:nginx *
