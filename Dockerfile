FROM bitnami/node:8

COPY package-lock.json ./package-lock.json

RUN npm install npm@5.6.0 -g

RUN chmod 777 /root && npm install --production

COPY . .

CMD npm start