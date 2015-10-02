require "sinatra"

# puts "I'm in an app"

letters = ("a".."z").to_a
numbahs = 100.downto(50).to_a
realQuotes = [
	"Hellooooo~ nurse.",
	"Shaken, not shtirred",
	"To be... nah",
	"Hey, watch this",
	"Life is a bowl of cherries",
	"This is awesome",
	"This ain't aweful - negative",
	"This ain't awful - positive"]

get "/" do
	"Hello, world."
	"Hello, nurse."
end

get "/all" do
	all = ""

	letters.each do |q|
		all += q
	end

	all
end

get "/numbers" do
	# without using quotes.sample
	# rand(...)
	randomIndex = rand(numbahs.length)
	numbahs[randomIndex].to_s
end

get "/quote" do
	# without using quotes.sample
	# rand(...)
	randomIndex = rand(realQuotes.length)
	realQuotes[randomIndex]
end

get "/twoquotes" do
	# how to get 2 quotes that are guaranteed not the same?
end