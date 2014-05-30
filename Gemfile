source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.2'


gem 'rails', '4.1.1'

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
# gem 'rails-assets-dropzone'
gem 'rails-assets-jquery-waypoints'
gem 'rails-assets-nouislider', '6.0.0'

gem 'sprockets', '2.11.0' # Fucking shit!!!

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'

# Authorization
gem 'pundit'

# Upload helpers
gem 'carrierwave'
gem 'fog'
gem 'rmagick', require: 'RMagick'

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

# Admin
# gem 'activeadmin', github: 'gregbell/active_admin'

# Background process
gem 'sidekiq'

# Analytics
gem 'newrelic_rpm'

group :production do
  gem 'mysql2'

  gem 'rails_12factor'
  gem 'unicorn'
end

group :development, :test do
  gem 'sqlite3'

  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'annotate'
  gem 'yard'
  gem 'spring'
  gem 'meta_request'
  gem 'foreman'

  # Test
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'faker-japanese'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'simplecov'

  # Auto-generate API documents
  gem 'grape-swagger'
  gem 'grape-swagger-ui'

  # Improve error analytics
  gem 'better_errors'
  gem 'binding_of_caller'

  # Detect vulnerability
  gem 'brakeman', require: false

  # Detect N+1
  gem 'bullet'
end
