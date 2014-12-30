require 'prime'


beginning = Time.now
max = 0

(1..9).each do |j|
  array = Array.new(j) {|i| i+1 }
  permutation_array = array.permutation.to_a

  (0..permutation_array.length-1).each do |i|
    number = permutation_array[i].join.to_i
    if number.prime?
      if number > max
        max = number
      end
    end
  end
end

puts max

puts "Time elapsed #{Time.now - beginning} seconds."





