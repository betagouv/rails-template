FROM ruby:3.2.2

EXPOSE 3000

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs --no-install-recommends

# do the bundle install in another directory with the strict essential
# (Gemfile and Gemfile.lock) to allow further steps to be cached
# (namely the NPM steps)
WORKDIR /bundle
COPY Gemfile Gemfile.lock .
RUN bundle install

# Move to the main folder
WORKDIR /app

# We can't do the WORKDIR trick here because npm modules need to be
# installed in the root folder (since they're installed locally in
# node_modules)
COPY package.json package-lock.json .

RUN npm i

ENTRYPOINT ["./entrypoint.sh"]

CMD bundle exec rails s -b 0.0.0.0
