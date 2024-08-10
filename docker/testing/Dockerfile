# Use base Ruby image
FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy app code
COPY . .

# Install testing gems
RUN bundle exec rake test:prepare

# Run tests
CMD ["bundle", "exec", "rspec"]
