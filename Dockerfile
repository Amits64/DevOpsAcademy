# Stage 1: Build
FROM ruby:3.1.0 AS build

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

# Precompile assets
RUN bundle exec rake assets:precompile

# Stage 2: Runtime
FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Set working directory
WORKDIR /app

# Copy precompiled assets and application code
COPY --from=build /app /app

# Expose port
EXPOSE 3000

# Start the application
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
