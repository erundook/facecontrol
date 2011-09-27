source 'http://rubygems.org'

gem 'rails', '3.1.1.rc1'
#, :git => 'git://github.com/rails/rails.git', :branch=>'3-1-stable'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :test, :development do
	gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'mocha'
  gem 'database_cleaner'
end

gem 'mysql2'
# heroku

gem 'newrelic_rpm'
gem 'pg'
gem 'squeel'

#our custom gems

# amf
gem "RocketAMF", :git => "git://github.com/rubyamf/rocketamf.git"
gem 'rubyamf', :git => 'git://github.com/rubyamf/rubyamf.git'
# state machine
gem 'aasm'
# background processor
gem 'resque'
gem 'resque-scheduler', :git => 'git://github.com/bvandenbos/resque-scheduler.git'
gem 'foreman'
gem 'rack-cache'

# js compiler
gem 'therubyracer'

###

gem 'activeadmin'

gem 'sass-rails', "  ~> 3.1.0"
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'haml'
gem 'haml-rails'


# Use thin as the web server
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
