# Use a base image with older package versions
FROM ubuntu:18.04

# Set the maintainer label
LABEL maintainer="your_email@example.com"

# Install some older packages
RUN apt-get update && \
    apt-get install -y \
    python3=3.6.9-1~18.04.1 \
    nodejs=8.10.0~dfsg-2ubuntu0.4 \
    curl=7.58.0-2ubuntu3.13

# Display the installed versions
RUN python3 --version && \
    node --version && \
    curl --version

LABEL python_version="3.4.0"
# Set up your application here...
