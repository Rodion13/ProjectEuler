
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