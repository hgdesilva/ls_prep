# 1. ask for a name and then print it 

puts "what is your first name?"
first_name = gets.chomp

puts "what is your last name?"
second_name = gets.chomp

name = first_name + " " + second_name
puts "hello #{name}, welcome!"

# 2. ask for user's age then puts age in 10,20,30 and 40 years time

puts "hello, how old are you?"
age = gets.chomp.to_i

(1..4).each do |v|
  increment = v*10
  puts "In #{increment} years, you will be #{age + increment} years old!"
end

# 3. print users name ten times

10.times { puts name}