FROM node:20-alpine

RUN mkdir -p /home/app/node_modules 
WORKDIR /home/app

COPY package*.json ./

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]
