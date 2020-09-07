FROM webdevops/php-nginx:7.0

RUN apt-get update && apt-get install -y libz-dev
RUN pecl install grpc
COPY grpc.ini /usr/local/etc/php/conf.d/grpc.ini