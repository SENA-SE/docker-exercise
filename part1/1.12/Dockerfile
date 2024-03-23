FROM node:16-alpine

WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install project dependencies
RUN npm install

# Build the static files
RUN npm run build

# Install `serve` to serve the static files
RUN npm install -g serve

EXPOSE 5000

# Run `serve` to serve the project on port 5000
CMD ["serve", "-s", "-l", "5000", "build"]
