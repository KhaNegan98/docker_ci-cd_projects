#use an official Node runtime as the base image
FROM node:20-alpine

#set the working directory in the container
WORKDIR /app

#Copy package.json and package-lock.json to the working directory
COPY package*.json ./

#install dependencies
RUN npm install

#copy the rest of the application code to the working directory
COPY . .

#expose the port the app runs on
EXPOSE 8080

#command to run the application
CMD ["npm", "start"]
