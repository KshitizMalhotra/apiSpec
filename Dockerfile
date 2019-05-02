FROM node:8.16.0-alpine
LABEL MAINTAINER=Malhotra

COPY . /apiSpec
WORKDIR /apiSpec

RUN apk upgrade --update \
  && apk add --no-cache build-base \
  && apk add bash \
  && apk add make \
  && npm i -g redoc-cli

EXPOSE 8080

CMD redoc-cli bundle -o ./docs/index.html specs/api.yml