require "unirest"
require "pp"

system "clear"
puts "Welcome to the Mini Capstone Create App!  Please select an option:"
puts "Option [1]: View all products"
puts "Option [2]: Create a new product"
puts "Option [3]: View one specific product"

input_option = gets.chomp

if input_option == 1
  response = Unirest.get("http://localhost:3000/v1/products")
  product = response.body
  pp product
elsif input_option == 2
  params = {}
  puts "Print enter the product name:"
  params["input_name"]
  puts "Print enter the price:"
  params["input_price"]
  puts "Print enter the image:"
  params["input_image"]
  puts "Print enter the description:"
  params["input_description"]
  response = Unirest.post("http://localhost:3000/v1/products", parameters: params) 
  product = response.body 
  pp product

elsif input_option == 3
  puts "Enter the product id of the product you would like to view:"
  input_product_id = gets.chomp
  response = Unirest.get("http://localhost:3000/v1/products/#{input_product_id}")
  product = response.body
  pp product
end 
