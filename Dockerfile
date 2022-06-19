FROM ubuntu:16.04
MAINTAINER MIKADO
RUN echo "Starting MIKADO.."
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
RUN echo "nginx MIKADO installed.."
COPY /slider/*.* /usr/share/nginx/html
RUN echo "site MIKADO ready.."
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
