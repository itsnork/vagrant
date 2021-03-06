# Expires map
map $sent_http_content_type $expires {
    default                    off;
    text/html                  epoch;
    text/css                   max;
    application/javascript     max;
    ~image/                    max;
}

server {
  listen 80 default_server;
  listen [::]:80 default_server;
  server_name {{ inventory_hostname }};

  expires $expires;
