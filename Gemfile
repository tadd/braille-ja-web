source 'https://rubygems.org'

ruby '~> 3.3.4' if ENV.key?('DYNO') # in Heroku environment

gem 'sinatra'
gem 'unicorn'
gem 'braille-ja', github: 'tadd/braille-ja'

group :development do
  gem 'sinatra-contrib'
  gem 'rspec'
  gem 'rack-test'
end
