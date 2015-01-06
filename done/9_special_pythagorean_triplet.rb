# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Rodion Yaryy
# https://projecteuler.net/problem=9

beginning = Time.now
result = 0

# Finds all factors of a number and puts them in array
def factors_of(number)
  arr = []
  (1..number).each do |i|
    if number % i == 0 then arr << i end
  end
  return arr
end

#Use Pythagorean Triplets method when one side is known to find the result.
i = 1
while (result==0) do
  b = i
  arr = factors_of(i/2)
  (0..(arr.length-1)/2).each do |k|
    a = arr[arr.length-1-k]**2 - arr[k]**2
    c = arr[arr.length-1-k]**2 + arr[k]**2
    if a+b+c == 1000 then
      result = a*b*c
      break;
    end
  end
  i += 1
end

puts result

puts "Time elapsed #{Time.now - beginning} seconds."

# Time elapsed 0.001061 seconds.