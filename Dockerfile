FROM elixir:1.9.1-alpine

RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache \
  nodejs \
  npm \
  build-base && \
  mix local.rebar --force && \
  mix local.hex --force

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix do deps.get, deps.compile, compile

RUN cd assets && \
  npm install && \
  npm run deploy && \
  cd .. && \
  mix phx.digest

EXPOSE 4000

CMD ["mix", "phx.server"]
