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

# Expose port
EXPOSE 3000

# Start development server
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
