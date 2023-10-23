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
  @num = params.fetch("number").to_f
  @results = @num ** 2
  erb(:square_results)
end

get("/square_root/new") do 
  erb(:squareroot)
end

get("/square_root/results")do
  @num = params.fetch("number").to_f
  @results = @num ** 0.5
  erb(:squareroot_results)
end

get("/payment/new") do 
  erb(:payment)
end 

get("/payment/results") do
  @apr = params.fetch("APR").to_f 
  monthly_rate = (@apr/100) / 12.0
  @years = params.fetch("years").to_f
  @principal = params.fetch("principal").to_f
  @payment = (@principal * monthly_rate) / (1 - (1 + monthly_rate) ** (-@apr*12))
  erb(:payment_results)
end

get("/random/new") do 
  erb(:random)
end

get("/random/results") do
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  @random = rand(@min..@max)
  erb(:random_results)
end
