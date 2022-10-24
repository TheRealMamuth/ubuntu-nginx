FROM ubuntu:focal
ENV DEBIAN_FRONTEND noninteractive
LABEL Maintainer=PiotrKoska
RUN apt-get update && apt-get install -qy nginx && rm -rf /var/lib/apt/lists/* && rm /var/www/html/index.nginx-debian.html
STOPSIGNAL SIGTERM
EXPOSE 80
COPY ./index.html /var/www/html/index.html
CMD ["nginx","-g daemon off;"]
