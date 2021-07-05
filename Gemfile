# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'aws-sdk-s3', require: false
gem 'bcrypt'
gem 'cancancan', '~> 3.2.1'
gem 'circleci', require: false
gem 'ffaker', '~> 2.18.0', require: false

gem 'mimemagic', '~> 0.4.3'
gem 'mini_magick', '~> 4.11.0'
gem 'rack-cors', require: 'rack/cors'
gem 'rectify', '~> 0.13.0'

gem 'dry-validation'

gem 'wicked'
# Reduces boot times through caching; required in config/boot.rb
gem 'active_model_serializers'
gem 'apipie-rails'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'jsonapi-rails'
gem 'simple_command'
# image uploader
gem 'carrierwave', '~> 2.0'
gem 'carrierwave-base64'

gem 'acts_as_list'

gem 'fast_jsonapi'
gem 'jwt'
gem 'pundit'
gem 'rswag-api'
gem 'rswag-ui'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_consistency', '~> 0.8.13', require: false
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rswag'
  gem 'rubocop', '~> 1.12', require: false
  gem 'rubocop-graphql'
  gem 'rubocop-performance', '~> 1.10.2', require: false
  gem 'rubocop-rails', '~> 2.9.1', require: false
  gem 'rubocop-rspec', '~> 2.2.0', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'json_matchers'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'simplecov', '~> 0.21.2', require: false
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
