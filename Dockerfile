FROM webdevops/php-nginx:7.4

RUN apt-get update && apt-get install -y libz-dev
RUN pecl install grpc
COPY grpc.ini /usr/local/etc/php/conf.d/grpc.ini
