require 'rubygems'
require 'sinatra'
require 'rack'

# Sinatra has a built-in web server. The command
# below disables it so that Rack is the only
# web server running
set :run, false

# By default, Sinatra only loads the files for the
# project once (at startup). Below, the Rack::Reloader
# plugin is used so that all development files will
# be reloaded on each request while the app is running
# in "development" mode (which is the default mode)
configure :development do
  use Rack::Reloader, 0
end

# This is the source file for the application
require "program"

# Starts Sinatra, and loads all paths declared in 'myapp'
run Sinatra::Application
