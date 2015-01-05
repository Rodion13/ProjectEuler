# Champernowne's constant
# Problem 40
# An irrational decimal fraction is created by concatenating the positive integers:
# 0.123456789101112131415161718192021...
# It can be seen that the 12th digit of the fractional part is 1.
# If dn represents the nth digit of the fractional part, find the value of the following expression.
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

# Rodion Yaryy
# Link: https://projecteuler.net/problem=40

string = ""
number = 1

loop do
  string << number.to_s
  if string.length > 1000000 then break end
  number += 1
end

puts string[0].to_i * string[9].to_i * string[99].to_i *
         string[999].to_i * string[9999].to_i * string[99999].to_i *
              string[999999].to_i
