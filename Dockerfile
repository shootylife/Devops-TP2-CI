FROM node:12.18.4

COPY /src .

COPY package.json .

COPY yarn.lock .

RUN yarn global add node-gyp && yarn install

RUN yarn start
