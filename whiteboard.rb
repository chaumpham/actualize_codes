# array = ["white","blue","red"]
# index = 0
# sum = ""
# array.length.times do 
#   word = array[index]
#   puts word
#   sum = sum + word
#   index = index + 1
# end

# puts sum

# def divisible_by_3
#   index = 1
#   array = []
#   100.times do
#     if index % 3 == 0
#       array << index
#     end
#     index += 1
#   end
#   return array
# end

# puts divisible_by_3

# def count_55(input_array)
#   index = 0
#   count = 0
#   input_array.length.times do
#     if input_array[index] == 55
#       count += 1
#     end
#     index += 1
#   end
#   return count
# end

# puts count_55([55, 4, 7, 55, 9, 1, 55, 2, 3, 55, 0])

# def array_to_hash(input_array)
#   index = 0
#   output_hash = {}
#   input_array.length.times do
#     output_hash[index] = input_array[index]
#     index += 1
#   end
#   return output_hash
# end

# puts array_to_hash(["a","b","c"])

def prime_nums(n)
  primes =[]
  num_check = n - 1
  n.times do 
    if n % num_check != 0
      num_check -= 1 
      primes << n
    else
    end  
  end 
  return primes
end

puts prime_nums(12)
