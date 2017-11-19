require "unirest"
require "pp"

system "clear"

puts "Welcome to the Contacts App"
puts "Please select an option"
puts "[1] Display all contacts"
puts "[2] Create a new contact"
puts "[3] Display one contact"
puts "[4] Update a contact"
puts "[5] Delete a contact"

input_option = gets.chomp

if input_option == "1"
  response = Unirest.get("http://localhost:3000/contacts")
  contacts = response.body
  pp contacts

elsif input_option == "2"
  params = {}
  puts "Enter the contact's first name"
  params[:first_name] = gets.chomp
  puts "Enter the contact's last name"
  params[:last_name] = gets.chomp
  puts "Enter the contact's email"
  params[:email] = gets.chomp
  puts "Enter the contact's phone number"
  params[:phone_number] = gets.chomp
  response = Unirest.post("http://localhost:3000/contacts", parameters: params)
  contact = response.body
  pp contact

elsif input_option == '3'
  puts "Enter id of the contact you wish to display"
  input_id = gets.chomp
  response = Unirest.get("http://localhost:3000/contacts/#{input_id}")
  contact = response.body 
  pp contact

elsif input_option == '4'
  params = {}
  puts "Enter id of the contact you wish to update"
  input_id = gets.chomp
  puts "Enter the contact's new first name"
  params[:first_name] = gets.chomp
  puts "Enter the contact's new last name"
  params[:last_name] = gets.chomp 
  puts "Enter the contact's new email" 
  params[:email] = gets.chomp 
  puts "Enter the contact's new phone number"
  params[:phone_number] = gets.chomp
  response = Unirest.patch("http://localhost:3000/contacts/#{input_id}", parameters: params)
  contact = response.body
  pp contact

elsif input_option == '5'
  
end 

