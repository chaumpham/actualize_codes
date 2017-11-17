require "unirest"
require "pp"

system "clear"
puts "Welcome to the Mini Capstone Create App!  Please select an option:"
puts "Option [1]: View all products"
puts "Option [2]: Create a new product"
puts "Option [3]: View a specific product"
puts "Option [4]: Update a specific product"

input_option = gets.chomp

if input_option == "1"
  response = Unirest.get("http://localhost:3000/v1/products")
  product = response.body
  pp product
elsif input_option == "2"
  params = {}
  puts "Enter the product name:"
  params["input_name"] = gets.chomp
  puts "Enter the price:"
  params["input_price"] = gets.chomp
  puts "Enter the image:"
  params["input_image"] = gets.chomp
  puts "Enter the description:"
  params["input_description"] = gets.chomp
  response = Unirest.post("http://localhost:3000/v1/products", parameters: params) 
  product = response.body 
  pp product
elsif input_option == "3"
  puts "Enter the id of the product you would like to view:"
  input_product_id = gets.chomp
  response = Unirest.get("http://localhost:3000/v1/products/#{input_product_id}")
  product = response.body
  pp product
elsif input_option == "4"
  params = {}
  puts "Enter the id of the product you would like to update:"
  input_product_id = gets.chomp
  puts "Enter the product new name:"
  params["input_name"] = gets.chomp
  puts "Enter a new price:"
  params["input_price"] = gets.chomp
  puts "Enter a new image:"
  params["input_image"] = gets.chomp
  puts "Enter a new description:"
  params["input_description"] = gets.chomp
  response = Unirest.patch("http://localhost:3000/v1/products/#{input_product_id}", parameters: params)
  product = response.body
  pp product

end 
