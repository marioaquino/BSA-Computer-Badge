# This call to reset! makes sure this file is reloaded
# if the web application is running in "development" mode
Sinatra::Application.reset! if development?

# Declare your routes below using get "/somepath" or post "/somepath"
get '/' do
  @me = "Mario"
  erb :index
end
