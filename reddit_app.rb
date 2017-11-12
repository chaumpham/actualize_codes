require "unirest"

#while true
system "clear"
puts "Welcome to the Reddit App!"
puts "Enter a number"
input_number = gets.chomp

response = Unirest.get("https://www.reddit.com/r/minimalism/.json") # a web resquest is get + url
posts = response.body["data"]["children"] # array of posts

index = 0 
post.length.times do 
  post = posts[index]
  puts "#{index}. #{post["data"]["title"]}"
  index = index + 1
end
puts

puts "Enter a number to see comments for that post"
post_index = gets.chomp.to_i

permalink = posts[post_index]["data"]["permalink"]



response2 = Unirest.get("https://www.reddit.com/r/minimalism/comments/7brubl/dont_start_while_you_have_the_flu_xd/.json")
body2 = response2.body

puts "COMMENTS"
index = 0
11.times do
  puts "#{index}. #{body2[1]["data"]["children"][index]["data"]["body"]}"
  index = index + 1
end

#   input_option = gets.chomp
#   if input_option == "q"
#     puts "Thank you for using the Reddit App!"
#     break
#   end

# end

