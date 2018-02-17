FROM node:9.5.0-alpine

RUN mkdir -p /app
WORKDIR /app

COPY package-lock.json package.json ./
RUN npm install

COPY ./ ./

CMD [ "npm", "start" ]

EXPOSE 8000