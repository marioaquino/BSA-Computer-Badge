require 'rubygems'
require 'sinatra'

get "/" do
  counter = request.cookies['counter'].to_i || 0
  expiration = Time.now + (60 * 2)
  response.set_cookie('counter', :value => (counter += 1), :expires => expiration)
  "Hello, World! #{counter}"
end