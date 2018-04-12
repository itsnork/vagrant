server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/project/blog/public;
        index index.html index.htm index.php;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }
    location ~ \.php$ {
            include snippets/fastcgi-php.conf;
            include fastcgi_params;
            fastcgi_pass unix:/run/php/php7.0-fpm.sock;
            fastcgi_param SCRIPT_FILENAME /var/www/project/blog/public$fastcgi_script_name;
    }
}
