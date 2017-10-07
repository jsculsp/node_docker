FROM node:boron

# Create app direction
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
COPY package-lock.json .

RUN npm install

# Build app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]