Sinatra::Application.reset!

get "/" do
  erb :index
end

post "/submit" do
  @first = params[:first]
  @last = params[:last]
  erb :greeting
end