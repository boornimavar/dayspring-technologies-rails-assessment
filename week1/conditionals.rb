#we all know whats the deal about conditionals stmts so lets just go through important stuff and examples

#falsy values
# 1. false
# 2. nil

#truthy values
# 1. 0
# 2. ""
# 3. "false"

score = 100
if score < 99
    puts "you are not approved"
end
=begin
If there is only one line of code to be evaluated inside the block, 
then you can rewrite the code to be more succinct and take up only one line.
=end
puts "you are not approved" if score < 99

#BOOLEAN LOGIC
puts 5 == 5
puts 5 >= 6
puts 5 != 5
puts 4 <= 5
# checks the val type and actual val
puts 5.eql?(5)
# checks whether the both values shares same obj in memory
a = "san"
b = "san"
puts a.equal?(b)

# Method	Meaning
# ==	value comparison
# eql?	value + type comparison
# equal?	same object in memory

# <=> (spaceship operator) 
=begin
-1 if the value on the left is less than the value on the right;
0 if the value on the left is equal to the value on the right; and
1 if the value on the left is greater than the value on the right.
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1
=end

# Logical operators
# && (and), || (or) and ! (not)

# Case statements
grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!" 
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

puts did_i_pass