require "unirest"

system "clear"
puts "Welcome to the Dictionary App!"

puts "Enter a word: "
input_word = gets.chomp

response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
definitions = response.body

response2 = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
pronunciations = response2.body

response3 = Unirest.get("http://api.wordnik.com:80/v4/word.json/cat/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
topExample = response3.body

index = 0

puts "DEFINITIONS"
definitions.length.times do 
  puts "#{index}. #{definitions[index]["text"]}"
  #puts "#{order}. " + pronunciations[index]["raw"]
  #puts "#{order}. " + topExample"text"]
  index = index + 1
end

puts "TOP EXAMPLE"
puts topExample["text"]
