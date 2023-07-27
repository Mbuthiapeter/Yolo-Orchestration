FROM node:18-alpine

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN cd client

COPY client/package.json /app/client

COPY client/package-lock.json /app/client

RUN npm install

CMD ["npm","start"]

RUN cd ../backend

COPY backend/package.json /app/backend

COPY backend/package-lock.json /app/backend

RUN npm install

CMD ["npm","start"]

