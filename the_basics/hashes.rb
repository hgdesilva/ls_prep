#optional parameters

def greeting(name, options = {age:2, city: "London"})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "My name is #{name} and I am #{options[:age]} years old" +
    " and I live in #{options[:city]}"
  end
end

greeting("Bob")
greeting("Bob", {age:101})
greeting("Bob", {age: 62, city: "Venice"})

cars = {
  ford: ['fiesta', 'focus', 'mondeo'],
  mercedes: ['A class', 'B class', 'vans', 'trucks']
}

puts cars.has_key?(:ford)
selected = cars.select do |k,v|
  v.length == 3
end
 
puts cars.fetch(:fiat, 'go fish')

def hash_printer(keys: true, values: true)
  if keys && !values
    puts "keys"
  elsif keys && values
    puts "keys and values"
  elsif !keys && values
    puts "values only"
  end
end

hash_printer(keys: false)


counter = {}

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon', 'FAKE']


new_words = words.map do |w|
    w.split('').sort.join
  end

check_words = new_words.uniq

check_words.each do |w|
 counter[w] = []
end



words.each do |w|
  check_words.each do |cw|
    if w.split('').sort.join == cw
      counter[cw] << w
    end
  end
end
puts
puts counter
puts
counter.each do |k,v|
  print v
  puts
end
  