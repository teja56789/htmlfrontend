FROM nginx:latest

COPY . /usr/share/nginx/html/

COPY entrypoint.sh /entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080

