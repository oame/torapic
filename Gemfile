source 'https://rubygems.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Database
gem 'mysql2'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
#gem 'rabl'

# Global settings
gem 'settingslogic'

# Assets libralies
gem 'uglifier'
gem 'sass-rails'
gem 'coffee-rails'
gem 'slim-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'compass-rails'
gem 'ceaser-easing'
gem 'bootstrap-sass'
#gem 'font-awesome-rails'

# Auth
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'pundit'

# Image
gem 'paperclip'

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

# API
gem 'grape'

# Admin
gem 'activeadmin', github: 'gregbell/active_admin'

group :production do
  gem 'unicorn'
  gem 'therubyracer', platforms: :ruby
end

group :development, :test do
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'annotate'
  gem 'yard'

  # Test
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'simplecov'

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
