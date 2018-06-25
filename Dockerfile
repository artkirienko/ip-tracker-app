FROM ruby:2.5-stretch
WORKDIR /usr/src/app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt -y update && \
    apt -y install nodejs unzip
COPY . .
RUN curl -sO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip && \
    rm ngrok-stable-linux-amd64.zip && \
    mv ngrok bin/
RUN bundle
RUN bundle exec rails db:setup
CMD ["bin/run.sh"]
