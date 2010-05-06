Sinatra::Application.reset!

get "/" do
  erb :index
end

get "/submit" do
  "Hello #{params[:first]} #{params[:last]}!"
end