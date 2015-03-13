source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.0'

# optimize JSON
gem 'rabl'
gem 'oj'

# API
gem 'grape'
gem 'grape-rabl'

# Global settings
gem 'figaro'

# Assets libralies
gem 'uglifier'
gem 'sass-rails'
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
  # gem 'rails-assets-dropzone'
  gem 'rails-assets-jquery-waypoints'
  gem 'rails-assets-nouislider'
end

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'

# Authorization
gem 'pundit'

# Upload helpers
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

# Model helpers
gem 'paranoia'
gem 'validates_timeliness'

# View helpers
gem 'gravatar_image_tag'

# Pagination
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
  gem 'therubyracer', platform: :ruby
end

group :development, :test do
  gem 'sqlite3'
  gem 'quiet_assets'
  gem 'spring'
  gem 'meta_request'
  gem 'letter_opener'

  # Test
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'

  # Improve error analytics
  gem 'web-console'
  gem 'pry-rails'
  gem 'pry-byebug'
end
