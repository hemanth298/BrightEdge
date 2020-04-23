*usage:*

### Build ###
sudo docker build -t image_apache .

### RUN ###
sudo docker run -tid -p 5000:80 --name=container_apache image_apache
