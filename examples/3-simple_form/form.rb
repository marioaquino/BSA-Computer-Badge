require 'rubygems'
require 'sinatra'

get "/" do
  erb :index
end

post "/submit" do
  "Hello #{params[:first]} #{params[:last]}!"
end