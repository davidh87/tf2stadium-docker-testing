############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Foxy

# Install Nginx

# Update the repository
RUN apt-get update

# Install necessary tools
RUN apt-get install -y vim wget dialog net-tools git

# Download and Install Nginx
RUN apt-get install -y nginx 

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Add the landingpage vhost file
ADD landingpage.conf /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/landingpage.conf /etc/nginx/sites-enabled/landingpage.conf

RUN git clone https://github.com/TF2Stadium/Frontend-Landingpage.git /var/www/Frontend-Landingpage

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start