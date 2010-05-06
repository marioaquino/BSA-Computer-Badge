Sinatra::Application.reset!

enable :sessions

get "/" do
  # Example conditional assignment (control flow)
  session["counter"] ||= 0
  
  # Mathematical algorithm
  message = "Number of visits: #{ session["counter"] += 1 }"
  
  # 2 examples of control flow:
  # the if is conditional, the else is unconditional
  if session["counter"] % 2 == 0
    return message + " which is even"
  else
    return message + " which is odd"
  end
end
