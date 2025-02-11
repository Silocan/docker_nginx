FROM nginx:alpine

RUN apk add --no-cache bash nano

COPY start.sh /start.sh

RUN chmod +x /start.sh

WORKDIR /var/www

ENTRYPOINT ["/start.sh"]