FROM ubuntu:resolute-20260413
LABEL maintainer="Rohit Pawar"
RUN apt update
RUN apt install nginx -y
ExPOSE 80
CMD ["nginx", "-g", "daemon off;"]
WORKDIR /var/www/html
COPY index.html .