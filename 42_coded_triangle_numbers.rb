# Coded triangle numbers
# Problem 42 - https://projecteuler.net/problem=42
# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value.
# For example, the word value for SKY is 19 + 11 + 25 = 55 = t10.
# If the word value is a triangle number then we shall call the word a triangle word.
# Using words.txt, a 16K text file containing nearly two-thousand common English words, how many are triangle words?

# Rodion Yaryy
# Link: https://projecteuler.net/problem=42


beginning = Time.now

word_count = 0

def word_to_sum(word)
  chars_arr = word.chars.to_a
  hash = {}
  count = 1
  sum = 0

  ("A".."Z").each {|i| hash[i] = count; count += 1}
  chars_arr.each {|i| sum += hash.fetch(i)}

  return sum
end

def triangle_number?(sum)
  arr = Array.new
  (1..20).each { |i| arr[i] = 0.5*i*(i+1)}
  arr.each { |i| if i == sum then return true end}
  false
end

def triangle_word?(word)
  return true if triangle_number?(word_to_sum(word))
  false
end

def file_to_arr_of_words(file)
  words = ""

  Dir.chdir(File.dirname(__FILE__))
  File.read(file).each_line do |line|
    words << line.gsub("\"","")
  end

  words_array = words.split(",")
  return words_array
end

words_array = file_to_arr_of_words("words.txt")

words_array.each do |i|
  if triangle_word?(i) then word_count += 1 end
end

puts "Result: #{word_count}"

puts "Time elapsed #{Time.now - beginning} seconds."

# TIME
# Time elapsed 0.045215 seconds.




