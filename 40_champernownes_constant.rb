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
