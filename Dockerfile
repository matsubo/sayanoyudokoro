FROM ruby:3.1


RUN gem install bundler

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN bundle install

