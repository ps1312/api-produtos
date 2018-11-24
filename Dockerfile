FROM ruby:2.5.3

# define env variables
ENV BUNDLE_PATH=vendor/cache
ENV RAILS_ENV=test

# update the operating system:
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# if you need "vi" and "less" for easier troubleshooting later on:
RUN apt-get install -y vim; apt-get install -y less

# copy the api-produtos app to the container:
RUN mkdir /api-produtos
ADD . /api-produtos

# Define working directory:
WORKDIR /api-produtos

# Install the Rails Gems and prepare the database:
RUN bundle install --path vendor/bundle; DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:drop; bundle exec rake db:create; bundle exec rake db:migrate

# Make port 80 available to the world outside this container
EXPOSE 80