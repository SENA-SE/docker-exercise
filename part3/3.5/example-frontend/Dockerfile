FROM ubuntu:22.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_19.x -o nodesource_setup.sh
RUN apt-get install -y nodejs

COPY . .

RUN npm install
RUN npm run build
RUN npm install -g serve

# create the appuser
RUN useradd -m appuser

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]