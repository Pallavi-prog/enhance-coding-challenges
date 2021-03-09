=begin

Write a short program that prints each number from 1 to 100 on a new line.
For each multiple of 3, print "Fizz" instead of the number.
For each multiple of 5, print "Buzz" instead of the number.
For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

=end

1.upto(100) do |i|
  
    # For multiple of 3 and 5 print "FizzBuzz" instead of the number 
    if i % 3 == 0 && i % 5 == 0
        puts "FizzBuzz"

     # For multiple of 3, print "Fizz" instead of the number 
    elsif i % 3 == 0
        puts "Fizz"

     # For multiple of 5, print "Buzz" instead of the number 
    elsif i % 5 == 0
        puts "Buzz" 

        # Print the number itself 
    else 
        puts i
    end

end