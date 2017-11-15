require "unirest"

system "clear"
puts "welcome to the mini-capstone app!"
puts "please enter a number:"
index = gets.chomp.to_i

response = Unirest.get("http://localhost:3000/mini_capstone_url")
products = response.body

p products[index]