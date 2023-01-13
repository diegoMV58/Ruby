# times
# this one makes an action the number of times we want
10.times do |i|
  print ("#{i + 1} - ")
end
puts
#upto
# this one does the same, but has an starting number and a final one
1.upto(20) do
  print ("X - ")
end

puts

#downto
# lo contrario a upto
20.downto(1) do
  print ("W - ")
end