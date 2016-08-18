bigwisu-docker-nginx
==================

Many images are deprecating and moving to official images which are based on Alpine Linux. So let's fork and maintain this Ubuntu based Nginx Docker Image.

Usage
-----

To create the image `bigwisu/nginx`, execute the following command on the `bigwisu-docker-nginx` folder:

    docker build -t bigwisu/nginx .


Running your Nginx docker image
-------------------------------

Start your image building the external ports 80 in all interfaces to your container:

    docker run -d -p 80:80 bigwisu/nginx

Test your deployment:

    curl http://localhost/

Hello world!

That's it!
