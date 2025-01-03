require 'sinatra'
require "sinatra/reloader" if development?
require 'json'
require 'braille-ja'
require 'digest'

helpers do 
  def setup_cache(seed)
    cache_control :public, max_age: 3600
    etag Digest::SHA1.hexdigest(seed)
  end
end

get '/translate' do
  content_type :json
  text = params[:text]
  error 400, {error: 'text required'}.to_json if text.nil?
  error 400, {error: 'text too long'}.to_json if text.length > 100

  headers "Access-Control-Allow-Origin" => '*'
  setup_cache(text)
  {translated: text.to_braille}.to_json
end

get '/ping' do
  content_type :txt
  headers "Access-Control-Allow-Origin" => '*'
  'pong'
end

DEMO_SITE = 'https://tadd.github.io/braille-ja'

get '/' do
  redirect DEMO_SITE
end
