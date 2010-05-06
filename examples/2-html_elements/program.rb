Sinatra::Application.reset!

# Declare your routes below using get "/" or get "/somepath"
get '/' do
  @me = "Mario"
  erb :index
end
