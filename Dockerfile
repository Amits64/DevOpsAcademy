# Stage 1: Build
FROM ruby:3.3.4 AS build

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  postgresql-client \
  yarn \
  build-essential \
  libpq-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install Ruby gems
RUN bundle install --without development test

# Copy app code
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Stage 2: Runtime
FROM ruby:3.3.4

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  postgresql-client \
  yarn \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy precompiled assets and application code
COPY --from=build /app /app

# Expose port
EXPOSE 3000

# Start the application
CMD ["sh", "-c", "bundle install && rails server -b 0.0.0.0"]
