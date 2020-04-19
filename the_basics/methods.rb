# 1. create a greeting method

def greeting(name)
  "Hello #{name}"
end

puts greeting("Joe")

# 2. what to expressions evaluate to?
  #2.1    2
  #2.2    nil
  #2.3    "Joe"   (p return the obj and NOT nil)
  #2.4    "four"
  #2.5    "nil"

#3 use a multiply method

def multiply (a,b)
  a*b
end

puts multiply(3,4)

#4. scream method

def scream(words)
  words = words + "!!!"
  puts words
end

puts scream("Yippeee")