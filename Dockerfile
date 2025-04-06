#Set the baseImage to run the application
FROM node:latest

# Create app directory
WORKDIR /app

# Copy dependencies file
COPY package.json /app

# Install dependencies and build the app
RUN npm install

# Copy app source code
COPY . /app

# Expose the port the app runs in
EXPOSE 30

# Serve the app
CMD [ "node", "server.js" ]

## docker build -t node-app:latest .

## docker run -d -p 3033:30 --rm --name hello_world_node node-app:latest
## docker run -d -p 3033:30 --name hello_world_node node-app:latest
## docker run -p 3033:30 --name hello_world_node node-app:latest

## docker start -ai hello_world_node
## docker start hello_world_node
## docker stop hello_world_node

# docker build -t <image_name>:<tag> . // build an image with a name and tag

# docker run --rm -p 3000:3000 <image_name>:<tag> // run in interactive mode and remove the container when stopped
# docker run -d --name <custom_name> --rm -p 3000:3000 <image_name>:<tag> // run in interactive mode and remove the container when stopped and give it a name