# a symbols is an immutable chain

name = :diego

#symbols have the same object_id every time they are used, this is good for performance (memory)
#this ones are cool if you dont need the methods of the string and you dont need to change the string
name_1 = :diego
name_2 = :diego
lastname_1 = "molina"
lastname_2 = "molina"

puts name_1.object_id
puts name_2.object_id
puts lastname_1.object_id
puts lastname_2.object_id

#if you need to iterate over the value of a symbol you will need to save it in a normal variable
edit_name= name_1.capitalize

