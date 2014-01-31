source 'https://rubygems.org'
ruby '2.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

# Project oriented gems
gem 'paranoia'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'mysql2'
  gem 'unicorn'
  gem 'therubyracer', platforms: :ruby
end

group :development, :test do
  gem 'sqlite3'
  gem 'quiet_assets'
  gem 'meta_request'
  gem 'letter_opener'

  # Test
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'

  # Deployment
  gem 'capistrano', '~> 3.0', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-maintenance', require: false
end