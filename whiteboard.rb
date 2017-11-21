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

# def prime_nums(n)
#   primes =[]
#   num_check = n - 1
#   n.times do 
#     if n % num_check != 0
#       num_check -= 1 
#       primes << n
#     else
#     end  
#   end 
#   return primes
# end

# puts prime_nums(12)

# def new_array(array)
#   new_array = []
#   index = 0
#   array.length.times do
#     new_array << array[index]
#     index += 2
#   end 
#   return new_array
# end 

# p new_array(["a","b","c","d","e"])

# def new_array(array)
#   new_array = []
#   index = 0
#   array.length.times do
#     if index % 2 == 0 
#       new_array << array[index]
#     end 
#     index += 1
#   end
#   return new_array
# end 

# p new_array(["a","b","c","d","e"])

# def awesomesauce(original_array)
#   output_array = []
#   index = 0
#   original_array.length.times do
#     output_array << original_array[index]
#     output_array << "awesomesauce"
#     index += 1
#   end

#   return output_array
# end

# p awesomesauce(["a", "b", "c", "d", "e"])

# def greatest_num(input_array)
#   index = 0
#   greatest_num = input_array[index]
#   #loop_times = input_array.length - 1 
#   (input_array.length - 1).times do 
#     if greatest_num < input_array[index+1]
#       greatest_num = input_array[index+1]
#     end
#     index += 1
#   end
#   return greatest_num
# end 

# p greatest_num([5,4,8,1,2])

# def factorial(num)
#   product = num 
#   index = 1
#   (num - 1).times do 
#     product = product*(num - index)
#     index += 1
#   end 
#   return product
# end 

# p factorial(5

# def reverse(input_array)
#   reverse_array = []
#   index = -1
#   input_array.length.times do 
#     reverse_array << input_array[index]
#     index -= 1
#   end
#   return reverse_array
# end

# p reverse([1,2,3,4,5])

def weird_sum(array1,array2)
  index1 = 0
  new_array = []
  array1.length.times do
    index2 = 0 
    array2.length.times do 
      new_array << (array1[index1] + array2[index2])
      index2 += 1
    end 
    index1 += 1
  end 
  return new_array
end 

p weird_sum([1,5,10],[100,500,1000])