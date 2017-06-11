FROM node:alpine

COPY . /discord-irc

WORKDIR /discord-irc

RUN npm install && \
    npm run build && \
    touch /discord-irc/config.json

CMD npm start -- --config config.json
