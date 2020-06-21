mkdir conf
mkdir htdocs

# put your website and index.html in htdocs folder

docker rm web
docker run -dit --name web -p 448:443 --restart unless-stopped -v "${PWD}/conf":/usr/local/apache2/conf/ -v "${PWD}/htdocs":/usr/local/apache2/htdocs/ httpd

