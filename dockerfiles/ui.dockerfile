FROM node:14.18

# where our code is
WORKDIR /app

# what packages we use
COPY package*.json ./

RUN npm install

# copy our code to the container
COPY . .

# run the server
EXPOSE 8080
CMD [ "node", "server.js" ]