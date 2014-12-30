# Arranged probability
# Problem 100
# If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs,
# and two discs were taken at random, it can be seen that the probability of taking two blue discs,
# P(BB) = (15/21)×(14/20) = 1/2.
# The next such arrangement, for which there is exactly 50% chance of taking two blue discs at random,
# is a box containing eighty-five blue discs and thirty-five red discs.
# By finding the first arrangement to contain over 10^12 = 1,000,000,000,000 discs in total,
# determine the number of blue discs that the box would contain.

# Rodion Yaryy

# puts (15.0/21.0) * (14.0/20.0)

# puts (16.0/22.0) * (15.0/21.0)

# puts (17.0/23.0) * (16.0/22.0)

puts (85.0/120.0) * (84.0 / 119.0)

puts (88.0/125.0) * (87 / 124.0)

puts (85.0/120.0) * 1000000000000

puts (708333333332.0/1000000000000)*(708333333331.0/999999999999)

(707105898794..708333333332).each do |i|
   result = (i.to_f/1000000000000.0)*((i.to_f-1)/999999999999.0)
   puts "#{result}    #{i}"
   if result =~ 0.500000 then puts i end
end
