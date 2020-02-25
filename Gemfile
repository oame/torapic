source 'https://rubygems.org'

ruby '2.7.0'

gem 'rails', '6.0.2.1'

# JSON
gem 'rabl'
gem 'oj'

# API
gem 'grape'
gem 'grape-rabl'

# Env variables
gem 'dotenv-rails'

# Asset preprocessors
gem 'uglifier'
gem 'sass-rails'
gem 'compass'
gem 'compass-rails'
gem 'ceaser-easing'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'slim-rails'
gem 'font-awesome-rails'
gem 'modernizr-rails'
gem 'momentjs-rails'
gem 'pickadate-rails'

source 'https://rails-assets.org' do
  gem 'rails-assets-jquery-waypoints'
  gem 'rails-assets-nouislider', '6.0'
end

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'pundit'

# File manipulation
gem 'carrierwave'
gem 'fog'
gem 'fog-aws'
gem 'mini_magick'

# Model helpers
gem 'paranoia'
gem 'validates_timeliness'
gem 'gravatar_image_tag'
gem 'kaminari'

# I18n
gem 'rails-i18n'
gem 'i18n_generators'

# Ajax
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'nprogress-rails'

# Analytics
gem 'newrelic_rpm'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'therubyracer', platforms: :ruby
end

group :development, :test do
  gem 'sqlite3'
  gem 'spring'
  gem 'meta_request'
  gem 'letter_opener'
  gem 'listen'

  # Test
  gem 'rspec-rails'
  gem 'factory_bot_rails', "~> 4.0"
  gem 'faker'

  # Improve error analytics
  gem 'web-console'
  gem 'pry-rails'
  gem 'pry-byebug'
end
