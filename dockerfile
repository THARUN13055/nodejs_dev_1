FROM alpine:latest

WORKDIR /PROJECT

RUN apk add --no-cache nodejs npm

COPY . /PROJECT/

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "node" ]

CMD [ "app.js" ]