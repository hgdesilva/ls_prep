require 'pry'


def has_a_b?(str)
  if /b/.match(str)
    puts "Yes, #{str} contains a letter 'b'."
  else
    puts "no letter 'b' found"
  end
end

has_a_b?('Kiranbai')

p /b/.match('Kiranbai')
puts
def test(b)
  b.map! {|v| "I like the letter #{v}"}
end

a = ['a', 'b', 'c']
out = test(a)
puts "a is #{a}"
puts
puts out.class

def take_block(&block)
  block.call
end

take_block do
  puts "hello from tha block!!"
end

def block_taker(num, &block)
  yield(num)
end

block_taker 7 do |v|
  puts "#{v} squared is #{v**2}"
end

def proc_taker(pro)
  [1,2,3,4,5].each {|n| pro.call(n)}
end

proce = Proc.new do |n|
          puts "#{n} squared is #{n**2}"
end

proc_taker(proce)
12.times{print '*'}
puts

names = ['Rita', 'Sue', 'Bob', nil, 'Steve']

names.each do |n|
  begin
    puts "#{n}'s has #{n.length} letters in it"
  rescue => exception
    puts "OH NO !!!!"
  end
end

z = 0
z.each {|v| puts v}  rescue puts "something went wrong here!"

def divvy(n,d)
  begin
    answer = n/d
  rescue ZeroDivisionError=> e
    puts e.class
    puts
    puts e.message
  end
end

puts divvy(3,0)

# itertae over contacts hasg and populate da associated data rom the contact_data aray
# 
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
# 
keys = [:email, :address, :phone]
counter = 0

contacts.each do |k,v|

    a = contact_data.shift
    a.each do |e|
      v[keys[counter]] = e
      counter += 1
    end
    counter = 0  
  end

puts "here it is/.."
puts contacts