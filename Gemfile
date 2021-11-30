source 'https://rubygems.org'

ruby '2.7.5'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# *********** My added gems START here: **********************************
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'popper_js', '~> 1.11', '>= 1.11.1'
# Forms made easy for Rails!
gem 'simple_form', '~> 3.5'
# Devise for Authentication
gem 'devise', '~> 4.4', '>= 4.4.3'
# Allows you to create pretty URL’s and work with human-friendly strings as if they were numeric ids for ActiveRecord models.
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
# enabling remote multipart forms (AJAX style file uploads) with jquery-rails
gem 'remotipart', '~> 1.4', '>= 1.4.2'
# Rails engine that provides an easy-to-use interface for managing your data.
gem 'rails_admin', '~> 1.3'
# Simple authorization solution for Rails. All permissions are stored in a single location.
gem 'cancancan', '~> 2.2'
# used to easily generate fake data: names, addresses, phone numbers, etc.
gem 'faker', '~> 1.8', '>= 1.8.7'
# simple API for performing paginated queries
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
# Integrates the Twitter Bootstrap pagination component with the will_paginate pagination gem.
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
# A rich text editor for everyday writing
gem 'trix', '~> 0.11.1'
# a toolkit for file attachments in Ruby applications
gem 'shrine', '~> 2.11'
# Set of higher-level helper methods for image processing.
gem 'image_processing', '~> 1.4'
# Manipulate images with minimal use of memory via ImageMagick
gem 'mini_magick', '~> 4.8'
# store_dimensions plugin 
gem 'fastimage'
# Production file upload using Amazon s3 
gem 'aws-sdk-s3', '~> 1.16'
# Tag a single model on several contexts, such as skills, interests, and awards
gem 'acts-as-taggable-on', '~> 6.0'
# frameworks for multiple-provider authentication.
gem 'omniauth-facebook'
gem 'omniauth-github'
# Simple Rails app key configuration
gem 'figaro'
# Helper for add social share feature in your Rails app
gem 'social-share-button', '~> 1.1'
# Log impressions from controller actions or from a model (e.g. pageview count)
gem 'impressionist', '~> 1.6', '>= 1.6.1'


# *********** My added gems END here: **********************************

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.13'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # Shrine for testing
  gem 'shrine-memory'
end

group :development do
# get better error calls and notifications than the native Ruby error
  gem 'better_errors'
  gem 'binding_of_caller'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # To live reload the local server
  gem 'guard'
  gem 'guard-livereload', '~> 2.5', require: false
  # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  gem 'annotate', '~> 2.7', '>= 2.7.4'

  gem 'listen', '3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
  # Autoload the env
  gem 'dotenv-rails', '~> 2.5'

end

# Group gems for running tests
group :test do
  gem 'rails-controller-testing', '~> 1.0.2'
  gem 'minitest',                 '~> 5.11.3'
  gem 'minitest-reporters',       '~> 1.1.14'
  gem 'guard-minitest',           '~> 2.4.4'
end

group :production do
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 0.18'
  #Enable gzip compression on heroku, but don't compress images.
  gem 'heroku-deflater', '~> 0.6.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
