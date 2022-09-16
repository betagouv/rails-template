FROM ruby:3.1.2

EXPOSE 3000

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR /bundle

COPY Gemfile Gemfile.lock .

RUN bundle install

WORKDIR /app

COPY . .

RUN npm i

ENTRYPOINT ["./entrypoint.sh"]

CMD bundle exec rails s -b 0.0.0.0
