FROM node:latest

LABEL maintainer="marsbros.club"


RUN npm --version

HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8080 || exit 1

EXPOSE 8080

COPY / /

RUN npm i

RUN npm run build


CMD [ "npm","run","production" ]