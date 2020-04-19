require 'pry'

# 1. add two strings
puts "Homer " + "Simpson"


#2. use %, / etc. to find digits
n = 5678
thousands = n/1000
hundreds = n%1000/100
tens = n%1000%100/10
units = n%1000/100%10


puts thousands
puts hundreds
puts tens
puts units
puts

# 3. hash of movie titles and years
movies = {
  ET: 1982,
  'Star Wars' => 1979,
  'Harold Lloyd' => 1934,
  'Parasite' => 2019
}
puts movies[:ET]

# 4. array of movie title and years
arr = []
puts movies
puts "from {}"
movies.each do|k,v|
     arr << v
     print "#{v} "
end
puts
puts "from []"
arr.each {|v| print "#{v} "}
puts

# 5. factorials of 5,6,7,8

def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

ARGV[0].nil? ? num = 1 : num = (ARGV[0].to_i).abs
puts factorial(num)

# 6. square of 3 floats

arr = []

until arr.length == 3
  puts "Please enter a number to square"
  v =  gets.chomp.to_f
  arr << v
end

arr.each {|v| puts "#{v} squared = #{v*v}" }

# 7. error messaege: either there is a open bracket that hasn't been closed or that this bracket is not needed