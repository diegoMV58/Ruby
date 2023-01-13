# frozen_string_literal: true
print ("please gimme your name:")
name = gets.chomp.capitalize

puts ("Hello #{name}, how is it going?")

sleep(3)
print ("#{name} can you do me a favor?, please write something that you really like:")

thing = gets.chomp

puts ("The word #{thing} has #{thing.length} characters")
sleep(2)
print ("and that number is ")
if thing.length % 2 == 0
  print ("even")
else
  print ("odd")
end
