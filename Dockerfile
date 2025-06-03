FROM node:18

RUN apt-get update && apt-get install -y graphicsmagick && apt-get clean

WORKDIR /home/node/app

COPY . /home/node/app

RUN chown -R node:node /home/node/app

USER node

RUN npm install

CMD ["npm", "start"]
