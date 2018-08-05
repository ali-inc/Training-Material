require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "<h1>Hello World</h1>" +
  "<a href='/upload'> Go to the upload page</a>"
end

get '/upload' do
  "I'm live"
end
