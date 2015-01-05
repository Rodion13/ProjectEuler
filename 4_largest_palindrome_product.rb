# Problem: A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# Rodion Yaryy

def palindrome?(int)
  int.to_s == int.to_s.reverse
end

max = 0

(100..999).each do |number|
   (100..999).each do |number2|
     result = number * number2
     if palindrome?(result) then
       if result > max
         max = result
       end
     end
   end
end

puts max