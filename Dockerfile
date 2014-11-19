FROM groovenauts/ruby:2.1.2
MAINTAINER Michiko Hirata <m-hirata@groovenauts.jp>

ENV RAILS_ENV production

ADD . /usr/src/app
WORKDIR /usr/src/app
VOLUME /usr/src/app/log

RUN bundle install --system

RUN gem install rabbitmq_http_api_client redis json

CMD ["bundle", "exec", "magellan-rails"]

