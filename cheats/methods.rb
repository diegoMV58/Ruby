# frozen_string_literal: true
#you can use return if you want, is useful to finish the execution of the method
def square(x)
  x * x
end

def hello
  puts "Hi!"
end

#lets use an splat, is like and open arrangement
def say_hi(*people)
  people.each {|thing| puts "Hi #{thing}!, how are you?"}
end
hello
puts square(8)
say_hi "juan", "Winny", "Isabel", "Mubarack"

#you can convert an array to a splat

array_a = [1, 2, 3 ,4 ,5 ,6]
say_hi *array_a

#keyword
# like default values for the arguments
def you(name:"",age:0,food:)
  puts ("#{name} is #{age} years old, #{food}!")
end

you(name:"carlos",age:17,food:"yes")