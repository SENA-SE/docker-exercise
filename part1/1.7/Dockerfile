# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir
WORKDIR /usr/src/app

# Copy the sh file from this directory to /usr/src/app/ creating /usr/src/app/hello.sh
COPY script.sh .

# Update the package list and install curl
RUN chmod +x script.sh && apt-get update && apt-get -y install curl

# When running docker run the command will be script.sh
CMD ./script.sh
