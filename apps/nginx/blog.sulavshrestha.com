server {
    listen 80;
    listen [::]:80;

    server_name blog.sulavshrestha.com;
        
    location / {
        proxy_pass http://localhost:6105;
        include proxy_params;
    }
}
