source 'https://rubygems.org'
source 'https://rails-assets.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Build JSON
gem 'oj'
#gem 'jbuilder'
gem 'rabl'

# API
gem 'grape'

# Global settings
gem 'settingslogic'
gem 'dotenv-rails'

# Assets libralies
gem 'uglifier'
gem 'sass-rails'
gem 'coffee-rails'
gem 'slim-rails'
gem 'compass-rails'
gem 'jquery-rails'
gem 'ceaser-easing'
gem 'font-awesome-rails'

gem 'rails-assets-bootstrap-sass'
gem 'rails-assets-backbone'
gem 'rails-assets-moment'
gem 'rails-assets-dropzone'

gem 'sprockets', '2.11.0' # Shitttttt

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'

# Authorization
gem 'pundit'

# Upload
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'
gem 'rmagick'

# Model helpers
gem 'paranoia'

# View helpers
gem 'gravatar_image_tag'

# Pagination
gem 'kaminari'

# I18n
gem 'rails-i18n'
gem 'i18n-js'
gem 'i18n_generators'

# Ajax
gem 'rack-pjax'

# Admin
gem 'activeadmin', github: 'gregbell/active_admin'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'mysql2'

  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'annotate'
  gem 'yard'

  # Test
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'faker-japanese'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'simplecov'
  gem 'accept_values_for'

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

  # Deployment
  gem 'capistrano', '~> 3.0', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-maintenance', require: false
end
