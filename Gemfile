source 'http://rubygems.org'

ruby '2.7.1'

gem 'sinatra'
gem 'activerecord', '~> 6.1', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'

gem "sinatra-cross_origin"
gem 'rack-contrib'
gem 'fast_jsonapi'
gem 'sinatra-contrib'

group :test do
    gem 'rspec'
    gem 'capybara'
    gem 'database_cleaner'
end

group :development do
  gem 'pry'
  gem 'tux'
  gem 'sqlite3'
  gem 'faker'
end

group :development, :production do
    gem 'shotgun'
end

group :production do
  gem 'pg'
end
