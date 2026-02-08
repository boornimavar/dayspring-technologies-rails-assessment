# #DATATYPES IN RUBY
# # 1. Numbers -> int, float
# # 2. Strings -> single and double quotation marks
# # 3. Symbols 
# # 4. Boolean -> true, false, nil

# # STRING
# =begin
# yeah its the collectin of characters. 
# =end

# # String with Double or Single quotation marks.
# =begin
# 1. String with Double quotation marks -> string interpolation and escape characters
# 2. String with Single quotation marks => string interpolation and escape characters wont work here
# =end

# # String Interpolation
# name = "san"
# puts "Hello, #{name}"
# # escape characters
# puts "Hello \n\nHello"

# # Types of ways we can achieve string concatenation
# # With the plus operator:
# puts "Welcome " + "to " + "Ruby!" #=> "Welcome to Ruby!"

# # With the shovel operator:
# puts "Welcome " << "to " << "Ruby!" #=> "Welcome to Ruby!"

# # With the concat method:
# puts "Welcome ".concat("to ").concat("Ruby!") #=> "Welcome to Ruby!"

# # String Methods
# puts "san".capitalize
# puts "san".upcase
# puts "san".downcase
# puts "san ".strip
# print "san".split("")
# print "\n"
# puts "san".length
# puts "".empty?
# puts "san".include?("a")

# #Substring
# puts "san"[0..1]
# puts "san"[0, 1]
# puts "san"[0, 2]
# puts "san"[-1]

# #SYMBOL

# =begin
# a symbol needs a colon at the beginning of some text.
# :my_name
# Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. Symbols, on the other hand, are stored in memory only once, making them faster in certain situations
# =end

# #We can test it out the difference between symbol and str by using object_id 
# my_name = "boornima"
# puts my_name.object_id

# my_name = "sangavi"
# puts my_name.object_id

# puts :my_name.object_id
# puts :my_name.object_id

# #BOOLEAN
# # 1. True
# # 2. False
# # 3. Nil

# #nil 
# =begin
# In Ruby, everything returns an object.
# Even "nothing" is something in Ruby.
# That "something" is called nil.
# nil represents the absence of a value,
# but it is still an object of class NilClass.
# =end

puts nil.class

# everything in Ruby is an object.
# And every object is an instance of a class.