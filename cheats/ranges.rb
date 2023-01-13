# frozen_string_literal: true
range_a = ('a'..'z')

(1..100).each do |value|
  print value.to_s + " - "
end
(1..100).step(2).each do |value|
  puts value
end

puts ('ba'..'bm').to_a