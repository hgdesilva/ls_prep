puts "hello"
puts "hi"
puts "how are you?"
puts "I'm fine"

def say(words='hello')
  puts words +"."
end

say("hello")
say("hi")
say("how are you?")
say("I'm fine")

say
puts "***"

def some_method(num)
  num << 4
  return
end

a = [1,2,3]
some_method(a)
puts a