FROM ubuntu:14.04

RUN apt-get update && \
	apt-get -y install nginx

COPY ./default /etc/nginx/sites-available/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
