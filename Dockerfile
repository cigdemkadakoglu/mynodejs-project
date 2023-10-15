FROM node:18-alpine
WORKDIR /home/node/app
COPY package.json ./
RUN npm install 
COPY --chown=node:node . .
USER node
EXPOSE 8082
CMD [ "node", "index.js" ]