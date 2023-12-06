FROM python:alpine

WORKDIR /app

COPY main.py .

ENTRYPOINT ["python", "main.py"]

FROM node:8

WORKDIR /app

COPY package.json .
RUN npm install

COPY node.js .

ENTRYPOINT ["node","node.js"]
