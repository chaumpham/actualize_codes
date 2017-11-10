require "unirest"

system "clear"
puts "Welcome to the Dictionary App!"

puts "Enter a word: "
input_word = gets.chomp

response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

response2 = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

response3 = Unirest.get("http://api.wordnik.com:80/v4/word.json/cat/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

body = response.body
body2 = response2.body
body3 = response3.body
index = 0
order = 1

puts body3
#puts "The first five definitions are #{input_word} are:"

1.times do 
  puts "#{order}. " + body[index]["text"]
  puts "#{order}. " + body2[index]["raw"]
  puts "#{order}. " + body3[index]["text"]
  index = index + 1
  order = order + 1
end