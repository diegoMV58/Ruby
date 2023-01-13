# frozen_string_literal: true

print ("Tell me one number:")
number_a = gets.chomp.to_i

print ("Tell me another number:")
number_b = gets.chomp.to_i

puts ("am pretty sure #{number_a} is bigger than #{number_b}") if number_a > number_b

puts ("am pretty sure #{number_b} is bigger than #{number_a}") if number_a < number_b

puts ("#{number_a} and #{number_b} are the same number") if number_a == number_b

sleep(2)

print ("Lets try that again, this time gimme a word:")
word_a = gets.chomp
sleep(1)
print ("Tell me another word:")
word_b = gets.chomp

if word_a.length > word_b.length
  puts ("#{word_a} is longer than #{word_b}")
elsif word_a.length < word_b.length
  puts ("#{word_b} is longer than #{word_a}")
else
  puts ("both words have the same length")
end

unless word_a == "banana" || word_b == "banana"
  print ("you didn't use the word banana, congrats")
end

print(if word_a == "banana" || word_b == "banana" then "why would you use the word banana?" end)

sleep(2)

print ("what do you wanna do (go/continue):")
action = gets.chomp
puts (action == "continue" ? "so, do you wanna stay for a while" : "oh, you're going home then")
sleep(2)
case action
when "go"
  print ("have a good day!")
when "continue"
  print("ok, lets keep going")
end