require 'rubygems'
require 'sinatra'

enable :sessions

get "/" do
  session["counter"] ||= 0
  "Number of visits: #{session["counter"] = session["counter"] + 1}"
end
