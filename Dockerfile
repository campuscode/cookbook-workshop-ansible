FROM ruby:2.5.3

ENV NODE_VERSION 8
RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash -

RUN apt-get update && apt-get install -y vim nodejs

WORKDIR /cookbook
ADD . /cookbook

RUN gem install bundler -N
RUN bundle install
