#1. expression values
  #1.1 false
  #1.2 false
  #1.3 true     (4 is 'truthy' but not equal to the boolean true)
  #1.4 true
  #1.5 true

#2. all_caps if length > 10

def my_method(str)
  if str.length >10
    str.upcase 
  else
     str
  end
end
puts my_method("the rain in Spain falls mainly on the plane")
puts my_method("some text")

# 3. reports which range number is in

def number_group(num)
  if  num >= 0 && num <= 50
    "number is between 0 and 50"
  elsif num >50 && num <= 100
    "number is between 51 and 100"
  elsif num >100
    "number is over 100"
  end
end

puts "please enter a whole number"
number = gets.chomp.to_i
puts number_group(number)