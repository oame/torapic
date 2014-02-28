source 'https://rubygems.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# Global settings
gem 'settingslogic'

# Assets libralies
gem 'uglifier'
gem 'sass-rails'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'compass-rails'
gem 'ceaser-easing'
#gem 'font-awesome-rails'

# Auth
gem 'devise'
gem 'cancan'
gem 'squeel'

# Model improvements
gem 'paranoia'
gem 'paperclip'

# View improvements
gem 'gravatar_image_tag'
gem 'kaminari'
#gem 'rack-pjax'

# Internationalization
gem 'rails-i18n'
gem 'i18n_generators'

# Admin
gem 'activeadmin', github: 'gregbell/active_admin'

group :production do
  # Database
  gem 'mysql2'

  gem 'unicorn'
  gem 'therubyracer', platforms: :ruby
end

group :development, :test do
  # Database
  gem 'sqlite3'

  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'

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