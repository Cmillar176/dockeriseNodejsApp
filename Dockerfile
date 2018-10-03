# Defining what image we want to build from (version 8 of node)
FROM node:8

# Creating a directory to hold the application inside the image
WORKDIR /usr/src/app

# Installing app dependencies
COPY package*.json ./

RUN npm install

# To bundle the app's source code into the Docker image
COPY . .

EXPOSE 8080

# To run the app
CMD [ "npm", "start" ]
