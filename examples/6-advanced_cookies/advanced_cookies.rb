require 'rubygems'
require 'sinatra'

get "/" do
  counter = request.cookies['counter'].to_i || 0
  seconds_in_the_future = 30
  expiration = Time.now + seconds_in_the_future
  response.set_cookie('counter', :value => counter += 1, :expires => expiration)
  "You've been here #{counter} times and the cookies expires: #{expiration}"
end