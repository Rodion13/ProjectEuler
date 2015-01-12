# Largest product in a grid
# Problem 11
# In the 20×20 grid in the file grid_20by_20.txt, four numbers along a diagonal line have been marked in red.
# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
# What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

# Rodion Yaryy
# https://projecteuler.net/problem=11

beginning = Time.now

def file_to_arr(file)
  words = ""

  Dir.chdir(File.dirname(__FILE__))
  File.read(file).each_line do |line|
    words << line.gsub("\"","")
  end

  words_array = words.split(" ")
  return words_array
end

a = file_to_arr('grid_20_by_20.txt').each_slice(20).to_a

max = 0

(0..19).each do |j|
  (0..16).each do |i|
    value = a[i][j].to_i * a[i+1][j].to_i * a[i+2][j].to_i * a[i+3][j].to_i
    if value > max
      max = value
    end
  end
end

(0..19).each do |i|
  (0..16).each do |j|
    value = a[i][j].to_i * a[i][j+1].to_i * a[i][j+2].to_i * a[i][j+3].to_i
    if value > max
      max = value
    end
  end
end

#diagonal left
(0..16).each do |j|
  (0..16).each do |i|
    value = a[i][j].to_i * a[i+1][j+1].to_i * a[i+2][j+2].to_i * a[i+3][j+3].to_i
    if value > max
      max = value
    end
  end
end


#diagonal right
19.downto 0 do |j|
  (0..16).each do |i|
    value = a[i][j].to_i * a[i-1][j+1].to_i * a[i-2][j+2].to_i * a[i-3][j+3].to_i
    if value > max
      max = value
    end
  end
end

puts max

puts "Time elapsed #{Time.now - beginning} seconds."



