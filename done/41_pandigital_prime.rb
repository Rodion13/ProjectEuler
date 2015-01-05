# Pandigital prime
# Problem 41
# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
# What is the largest n-digit pandigital prime that exists?

# Rodion Yaryy
# Link: https://projecteuler.net/problem=41

require 'prime'

beginning = Time.now
max = 0

(1..9).each do |j|
  array = Array.new(j) {|i| i+1 }
  permutation_array = array.permutation.to_a

  (0..permutation_array.length-1).each do |i|
    number = permutation_array[i].join.to_i
    if number.prime?
      if number > max
        max = number
      end
    end
  end
end

puts max

puts "Time elapsed #{Time.now - beginning} seconds."





