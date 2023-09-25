# Use a base image with older package versions
FROM ubuntu:22.04

# Set the maintainer label
LABEL maintainer="your_email@example.com"

# Install some older packages
RUN apt-get update && \
    apt-get install -y \
    python3=3.6.9-1~18.04.1 \
    nodejs=8.10.0~dfsg-2ubuntu0.4 \
    curl=7.58.0-2ubuntu3.13

# renovate: datasource=repology depName=ubuntu_22_04/python3-defaults versioning=loose
ENV PYTHON3_VERSION="3.10.6-1~22.04"

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y python3=${PYTHON3_VERSION}* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# Set up your application here...
