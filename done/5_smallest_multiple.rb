# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Rodion Yaryy

beginning = Time.now
number = 0
min = 0

while !(min > 0) do
  20.downto(1) do |i|
    if number % i != 0 then break end
    if i == 2 then min = number end
  end
  number += 20
end

puts min

puts "Time elapsed #{Time.now - beginning} seconds."