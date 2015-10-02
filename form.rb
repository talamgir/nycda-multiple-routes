require "sinatra"
require "mandrill"

m = Mandrill::API.new

get "/home" do
	erb :home
end
get "/cincinatti" do
	"#{params}"
end

get "/philadelphia" do
	if !params[:email].nil? &&
	   !params[:name].nil? &&
	   !params[:from_email].nil?

		message = {
			:subject=> "Hello from the Mandrill API",
			:from_name=> "Your name",
			:text=>"Word up?",
			:to=>[{:email=> "#{params[:email]}",
				:name=> "#{params[:name]}"}
				],
				:html=>"<html>I'm doing great, thanks for inquiring. Here's a random number for you: #{rand(100)}</html>",
				:from_email=>"#{params[:from_email]}"
			}
			sending = m.messages.send(message)
			"#{sending}"
		else
			"email=nil OR name=nil OR from_email=nil"
		end
	end