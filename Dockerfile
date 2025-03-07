FROM node:12

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install NPMs
COPY package.json* package-lock.json* /usr/src/app/
RUN npm i --production

COPY . /usr/src/app
RUN npm run build

CMD [ "/usr/local/bin/node", "/usr/src/app/server/index.js" ]

