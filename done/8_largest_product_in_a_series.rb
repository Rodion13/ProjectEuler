# Largest product in a series
# Problem 8
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
# What is the value of this product?

# Rodion Yaryy
# https://projecteuler.net/problem=8

beginning = Time.now
max = 0

def file_to_word(file)
  number = ""

  Dir.chdir(File.dirname(__FILE__))
  File.read(file).each_line do |line|
    number << line
  end
  return number.gsub("\n","")
end

string = file_to_word('1000_digit_number.txt')

(0..string.length-1).each do |i|
  mult = 1
  (0..12).each do |j|
    mult *= string[i+j].to_i
  end
  if mult > max
    max = mult
  end
end

puts max
puts "Time elapsed #{Time.now - beginning} seconds."

# Time elapsed 0.004342 seconds.




