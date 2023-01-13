# while clause
i = 0
while i <= 10
  print ("#{i} - ")
  i += 1
end
puts
magic_number = 6

# until clause
print ("which is the magic number?:")
user_number = gets().chomp.to_i
until user_number == magic_number
  print ("you're wrong lmao, try again:")
  user_number = gets().chomp.to_i
end

#do while clause, you can use until here too
counter = 0
begin
  puts ("if you wanna kill me then write the number 99:")
  counter = gets.chomp.to_i
end while counter != 99