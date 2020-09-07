############################
# STEP 1 build executable binary
############################

FROM webdevops/php-nginx:7.4-alpine AS builder

RUN apk --no-cache add linux-headers zlib-dev pcre-dev ${PHPIZE_DEPS} \ 
  && pecl install xdebug \
  && docker-php-ext-enable xdebug

RUN pecl install grpc

############################
# STEP 2 build an optimized image
############################

FROM webdevops/php-nginx:7.4-alpine

COPY --from=builder /usr/local/lib/php/extensions/no-debug-non-zts-20190902/grpc.so \
   /usr/local/lib/php/extensions/no-debug-non-zts-20190902/grpc.so

COPY grpc.ini /usr/local/etc/php/conf.d/grpc.ini