server {
    listen 80;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl http2;
    server_name blog.sulavshrestha.com;

    ssl_certificate /etc/nginx/certs/example.crt;
    ssl_certificate_key /etc/nginx/certs/example.key;

    access_log /var/log/nginx/blog.sulavshrestha.access.log;
        
    location / {
        proxy_pass          http://localhost:6105;
        proxy_read_timeout  90;
        include proxy_params;

    }
}
