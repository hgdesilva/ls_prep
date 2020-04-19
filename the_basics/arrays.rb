#Array exercises

#1. check an array for a value

arr = [1,3,5,7,9,11]
number = 3
puts arr.include?(number)

#2.
arr = ["b","a"]
arr = arr.product(Array(1..3))
p arr
puts
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
p arr
puts

# 3. return 'example' from an array

arr = [["test","hello","world"],["example", "mem"]]
puts arr[1][0]

#4.
#4.1    3
#4.2    error
#4.3    8


#7 each_with index

arr = ["apple", "pear", "pineapple", "grapes"]
arr.each_with_index {|v,i| puts "#{v} at index #{i}"}


#8. increment array values

arr = [3,6,9,12,15]

new_arr = arr.map{|v| v+2}

puts "orginal array was #{arr}"

puts "new_arr is #{new_arr}"
