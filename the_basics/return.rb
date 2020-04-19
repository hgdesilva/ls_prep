def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

def add_three(n)
  n + 31
end

puts add_three 1
puts "-"*20
def add_three (num)
  new_value = num + 3
  puts "inside add_three method #{new_value}"
  new_value
end

add_three(3).times{puts "hi"}

def add(a,b)
  a + b
end

def subtract(a,b)
  a - b 
end

def multiply(num1,num2)
  num1 * num2
end

puts multiply(add(20,45), subtract(12,8))