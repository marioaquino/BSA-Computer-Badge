require 'rubygems'
require 'sinatra'

enable :sessions

get "/" do
  session["counter"] ||= 0
  "Hello, World! #{session["counter"] = session["counter"] + 1}"
end
