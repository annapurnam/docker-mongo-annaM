FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y nodejs nodejs-legacy npm git wget mongodb build-essential libssl-dev curl

RUN node -v
RUN echo "Hello Anu1"

RUN echo $NODE_ENV

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install -y nodejs
RUN node -v

COPY . /app/.

WORKDIR /app
RUN npm install

RUN cp .env.example .env

CMD [ "npm" , "start" ]
EXPOSE 3000
