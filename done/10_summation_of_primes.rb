# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Rodion Yaryy
# https://projecteuler.net/problem=10

require 'prime'
beginning = Time.now

def prime?(number)
  2.upto(Math.sqrt(number).to_i).each do |i|
    return false if number % i == 0
  end
  return true
end

sum = 2

(3..2000000).each do |i|
  if prime?(i) then sum += i end
end

puts sum
puts "Time elapsed #{Time.now - beginning} seconds."
# Time elapsed 16.425839 seconds.


######### ######### ######### ######### ######### ######### ######### ######### ######### ######### #########

beginning = Time.now
sum2 =0

def prime_fast?(num)
  nums = [nil, nil, *2..num]
  (2..Math.sqrt(num)).each do |i|
    if nums[i] then (i**2..num).step(i){|j| nums[j] = nil} end # line the takes care of the steps 2i, 3i, 4i... etc and marks them as nil
  end
  nums.compact # remove all nil elements
end

prime_fast?(2000000).each do |i| sum2 += i end

puts sum2
puts "Time elapsed #{Time.now - beginning} seconds."

# Time elapsed 0.545806 seconds.

######### ######### ######### ######### ######### ######### ######### ######### ######### ######### #########



