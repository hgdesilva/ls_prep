#1 
x = [1,2,3,4,5]
x.each do|a|
  a+1
end
# each returns the original collection

#2 while loop

inputs = []
input = ''
while x != 'Q'
  puts "Enter some text. type Q to quit"
  x = gets.chomp
  inputs << x
end
puts "bye"
puts "you entered"
inputs[0..-2].each{|v| puts "#{v}"}


#3. recursion countdown to 0

puts "enter a number to countdown from"
num = gets.chomp.to_i


def countdown(number)
  if number <= 0
    puts 0
  else
  puts number
  countdown(number -1)
  end
  
end

countdown(num)



