server {
	listen 80;
	listen [::]:80;

	root /home/marcus/www/marcusshannon.com;

	index index.html index.htm index.nginx-debian.html;

	server_name marcusshannon.com www.marcusshannon.com;

	location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}
