FROM bitnami/node:8

COPY package-lock.json ./package-lock.json
COPY package.json ./package.json

RUN npm install npm@5.6.0 -g

RUN chmod 777 /root && npm install --production

COPY mocks ./mocks

CMD npm start