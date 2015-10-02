require "sinatra"
get "/home" do
	erb :home
end
get "/cincinatti" do
	"#{params}"
end