FROM node:lts-alpine

WORKDIR /app

RUN apk update && \
    apk add git && \
    npm install -g npm && \
    npm install -g vue-cli && \
    npm rebuild node-sass && \
    yarn global add s3-deploy

ENV HOST 0.0.0.0
EXPOSE 3000

