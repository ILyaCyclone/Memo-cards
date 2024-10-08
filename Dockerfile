FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1234

ENTRYPOINT ["npm"]

CMD ["run", "dev"]
