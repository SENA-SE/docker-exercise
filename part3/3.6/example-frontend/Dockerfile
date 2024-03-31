FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_16.x | bash && \
apt-get install -y nodejs && \
npm install && \
npm run build && \
npm install -g serve && \
useradd -m appuser && \
chown appuser .

# now we can change the user
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]