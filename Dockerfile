FROM elixir:1.3.4
MAINTAINER Dmitriy Nesteryuk "dmitriy.nesteryuk@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive
ENV MIX_ENV=prod

# Install hex
RUN mix local.hex --force

WORKDIR /app

RUN git clone https://github.com/dnesteryuk/sirko-engine.git ./
RUN mix deps.get
RUN mix compile

CMD ["mix", "run", "--no-halt"]
