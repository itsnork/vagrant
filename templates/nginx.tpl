server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/project;
        index index.html index.htm index.php;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }
}