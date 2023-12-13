FROM node:14.18.3-stretch

LABEL authors="Administrator"
LABEL describe="nuxt3 test"

RUN npm config set registry https://registry.npm.taobao.org

RUN npm i -g pm2

WORKDIR /nuxt

ADD .output /nuxt/output
ADD package.json /nuxt
