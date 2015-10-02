require "sinatra"

set :bind, "0.0.0.0"

get "/" do
	"Hi, #{params[:firstname]}.\nYour last name is #{params[:lastname]}"
end

get "/come" do
	"Come Over Here, #{params[:slithy]}"
end

get "/split" do
	# pass in as params[:sentence]
	# return the number of words of the sentence
end