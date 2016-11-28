FROM ruby:2.3.1
MAINTAINER John Gallagher <john@synapticmishap.co.uk>

RUN apt-get update && \
    apt-get install -y net-tools

# Install gems
RUN mkdir /app
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install

COPY . /app/

ENV PORT $PORT
CMD ["ruby", "app.rb"]

