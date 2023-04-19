# using node as base image
FROM node:17-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000
# required for docker desktop port mapping

# Command to run node app
CMD ["node", "app.js"]