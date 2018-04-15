source 'http://rubygems.org'

gem 'rails', '~> 4.2.7.1'
gem 'pg'
gem 'omniauth', '~> 1.3.2'
gem 'omniauth-twitter'
gem 'jquery-rails'
gem 'sass-rails'
gem 'json_pure'
gem 'coffee-rails'
gem 'uglifier', '>= 1.0.3'

group :development do
  # Use newer gem from github that has a fix for the "undefined method `namespace' for main:Object" error
  # Note: This seems to be causing problems on heroku.  Uncomment it to run annotations locally.
  # gem 'annotate', :git => "https://github.com/ctran/annotate_models.git" 
  gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
