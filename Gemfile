source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'pg'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'jquery-rails'
gem 'sass-rails',   '~> 3.1.4'
gem 'json_pure'
gem 'coffee-rails', '~> 3.1.1'
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
