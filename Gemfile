source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'rake' , '>= 0.9.2'

gem 'json'

gem "haml", "~> 3.1.3"
gem "kaminari", "~> 0.12.4"
gem "devise", "~> 1.5.2"
gem 'bitmask_attributes'
gem 'formtastic-bootstrap'
gem "meta-tags", :require => 'meta_tags'
gem "has_scope", "~> 0.5.1"

group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer", "~> 0.9.8" #ExecJS runtime
end

group :production do
  gem "passenger", "~> 3.0.9"
  gem "exception_notification", "~> 2.5.2"
  gem 'pg'
end

gem 'jquery-rails'

group :development do
  gem "rails-dev-tweaks", "~> 0.5.1"
  gem 'capistrano', :require => false
  gem 'capistrano-recipes', :require => false
  gem 'capistrano_colors', :require => false
  gem 'pg'
end

group :test do
  gem 'rspec-rails',        '~> 2.7.0'
  gem 'factory_girl_rails', '~> 1.3.0'
  gem 'spork',              '>= 0.9.0.rc9'
  gem 'guard-spork',        '~> 0.3.1'
  gem 'guard-rspec',        '~> 0.5.0'
  gem 'guard-bundler',      '~> 0.1.3'
  gem "capybara",           "~> 1.1.1"

  gem 'rb-fsevent', '>= 0.4.3', :require => false
  gem 'growl',      '~> 1.0.3', :require => false
  gem 'rb-inotify', '>= 0.8.6', :require => false
  gem 'libnotify',  '~> 0.5.7', :require => false
end
