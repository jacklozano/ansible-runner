# Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL maintainer="jacklozan0@gmail.com"
LABEL version="0.1"
LABEL description="This is a custom Docker Image for ansible-runner on Ubuntu 22.04."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update && apt upgrade -y

# Install Python 3.8 and other supporting apps
RUN apt install -y python3 python3-pip

RUN apt clean

# Install Ansible Runner using pip
RUN pip3 install ansible-runner

# Start your entrypoint
CMD ["/bin/bash"]

# Expose Port for the Application 
EXPOSE 80 443
