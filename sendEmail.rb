require 'mandrill'

m = Mandrill::API.new
message = {
 :subject=> "Hello from the Mandrill API",
 :from_name=> "Your name",
 :text=>"Word up?",
 :to=>[{:email=> "jeremy.andaya@gmail.com",
        :name=> "Jeremy Andaya"}
      ],
 :html=>"<html>I'm doing great, thanks for inquiring. Here's a random number for you: #{rand(100)}</html>",
 :from_email=>"ehtesh@nycda.com"
}
sending = m.messages.send(message)
puts sending