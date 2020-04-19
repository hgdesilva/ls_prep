def greet(person)
  begin
    puts "Hello, " + person
  rescue => exception
    puts "whoopsy"
    puts exception.message
  end
  
end

greet("John")
greet(1)


def contains(w)
  if /lab/.match(w)
    puts w
  else
    puts "no matches"
  end
end

contains('alabrador')

def execute(&blk)
  blk.call
end

execute do
  puts "hello from inside the execute method!"
end