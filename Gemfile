source 'https://rubygems.org'

ruby '2.5.3' if ENV.key?('DYNO') # in Heroku environment

gem 'sinatra'
gem 'unicorn'
gem 'dalli'
gem 'braille-ja', git: 'https://github.com/tadd/braille-ja.git'

group :development do
  gem 'sinatra-contrib'
  gem 'rspec'
  gem 'rack-test'
end
