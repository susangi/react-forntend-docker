#use base docker image
FROM node:20-alpine

# set the working directory
WORKDIR /app

# copy package.json and package-lock.json files
COPY package*.json ./

#install the dependencies
RUN npm install

#copy reset of the application files
COPY . .

# expose the port your app wil run on port
EXPOSE 5173

# start the application
CMD ["npm", "run", "dev"]

