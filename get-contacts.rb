require "unirest"

system "clear"
response = Unirest.get("http://localhost:3000/one_contact_url")
contacts = response.body

contacts.each {|contact| puts "#{contact["first_name"]} #{contact["last_name"]} #{contact["email"]} #{contact["phone_number"]}"} 

