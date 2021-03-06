# frozen_string_literal: true
source 'https://rubygems.org'

ruby '2.3.3'

gem 'rails', '~> 4.2.7'

gem 'acts-as-taggable-on', '~> 3.4'
gem 'awesome_print'
gem 'coffee-rails', '~> 4.1.0'
gem 'dalli'
gem 'dotenv-rails'
gem 'foreman', require: false
gem 'friendly_id'
gem 'google-api-client'
gem 'haml-rails'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'kaminari'
gem 'kgio'
gem 'multi_json'
gem 'oink'
gem 'oj'
gem 'oj_mimic_json'
gem 'paper_trail', '~> 4.0.0.beta'
gem 'pg'
gem 'pg_search'
gem 'puma'
gem 'rack-cache'
gem 'rack-rewrite'
gem 'rails_admin'
gem 'raygun4ruby'
gem 'redcarpet'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'uglifier', '>= 1.3.0'
gem 'uuidtools'

# Authentication
gem 'devise'
# # Google
gem 'omniauth'
gem 'omniauth-google-oauth2'

# Redis
gem 'hiredis'
gem 'redis', require: ['redis', 'redis/connection/hiredis']

# Sidekiq
gem 'sinatra', '>= 1.3.0', require: false
gem 'sidekiq'

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman'
  gem 'bullet'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-rspec', require: false
  gem 'quiet_assets'
  gem 'rack-livereload'
  gem 'rails-erd'
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'rubocop'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'faker'
  gem 'jazz_fingers'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'codeclimate-test-reporter', require: false
  gem 'coveralls', require: false
  gem 'fuubar'
  gem 'launchy'
  gem 'poltergeist', require: false
  gem 'shoulda-matchers'
  gem 'timecop'
end

group :production do
  gem 'le'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

gem 'metamagic'
