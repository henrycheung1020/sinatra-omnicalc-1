require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square)
end 

get("/square/results") do 
  erb(:square_results)
end

get("/square_root/new") do 
  erb(:squareroot)
end

get("/square_root/results")do
  erb(:squareroot_results)
end

get("/payment/new") do 
  erb(:payment)
end 

get("/payment/results") do
  erb(:payment_results)
end

get("/random/new") do 
  "
  "
end
