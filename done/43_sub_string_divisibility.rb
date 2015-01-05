# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order,
# but it also has a rather interesting sub-string divisibility property.
# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.

# Rodion Yaryy
# https://projecteuler.net/problem=43


require 'prime'

beginning = Time.now
sum = 0

arr = []
prime_array = Prime.first(7)

(0..9).each {|i| arr[i] = i}
permutation_array = arr.permutation.to_a

(0..permutation_array.length-1).each do |i|
  e = permutation_array[i].join
  if (0..6).all? {|j| (e[j+1]+e[j+2]+e[j+3]).to_i % prime_array[j] == 0} then
    sum += e.to_i
  end
end

puts sum

puts "Time elapsed #{Time.now - beginning} seconds."

# Time elapsed 22.387108 seconds.
