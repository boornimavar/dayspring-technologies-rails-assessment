# OUTPUT IN RUBY

=begin
There are two common ways to print output to the terminal:

1. puts  -> prints with a newline
2. print -> prints without a newline

Both `puts` and `print` return nil because their job is only to display output.
=end

print "hello san"   # hello san=> nil

puts "hello san"
# hello san
# => nil

# INPUT IN RUBY

=begin
`gets` is used to take input from the user.

When we press ENTER, Ruby stores that newline character "\n" along with the input.
=end

gets
# I am san
# => "I am san\n"

=begin
`chomp` removes newline "\n" added by `gets`.
=end

name = gets.chomp
# I am san
# => "I am san"


=begin
If you want to remove extra spaces as well, use `strip`.
=end

name = " I am san "
name.strip
# => "I am san"
