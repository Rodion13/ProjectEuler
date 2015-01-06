# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# Rodion Yaryy
# https://projecteuler.net/problem=7

require 'prime'

beginning = Time.now

array = Prime.first(10001)
p array[10000]

puts "Time elapsed #{Time.now - beginning} seconds."
