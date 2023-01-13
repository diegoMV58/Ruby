# frozen_string_literal: true
require 'matrix'
#array creation and adding one more value
animals = ['dog', 'cat', 'horse', 'goldfish', 'gorilla']
animals << 'lemur'

#to create an array with string better use this
sport = %w[soccer basketball golf ]

#empty array creation
food = Array.new(5)
food[0] = 'rice'

puts (sport[1])
puts food[0]
puts animals


total = 0
puts("lets play a little, gimme 10 numbers")
average = Array.new(10)
average.each_with_index do |value,index|
  print ("give me the ##{index+1}:")
  average[index] = gets.chomp.to_i
  total += average[index]
end
puts("the values are #{average}, and the average is #{total.to_f / average.length}")

#the other way would be average.sort.reverse
puts average.sort


# you can do it like this too average * "-"
puts average.join("-")

#search uniques values
print average.uniq.join(",")
puts average.min
puts average.max

#to search an specific value inside the array
puts animals.include?("dog")
puts animals.first
puts animals.last


#to get a random value from the array
puts animals.sample

# Matrix: an arrays of array, al the sub array on the same dimension must have the same length ([[1,2,3],[1,2,3]] not [[1,2],[1,2,3]]) and they only use numbers
# when you print a matrix you must have to know that the matrix looks like this
# [
# 1 2 3
# 4 5 6
# 7 8 9
# ]
matriz = Matrix[[1,2,3],[4,5,6],[7,8,9]]
matriz.each do |i|
  print ("#{i} - ")
end
puts
#to print the values on diagonal (1 5 9), also you can use strict_upper to get the one above the diagonal [2 3 6] and strict_lower for the ones under [4 7 8]
matriz.each(:diagonal) do |i|
  print ("#{i} - ")
end

#hashes - arreglos

tutor = { "name" => "Diego", "age" => 27, 58 => "yes", [] => "lmao", :food => "sometimes", water: "yeah" }

puts tutor[:water]

tutor.each do |key,value|
  puts ("#{key}: #{value}")
end