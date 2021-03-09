=begin
  
  Write a function that accepts a single integer as its argument and returns true if the number
  is a prime number and false if it isn’t.
  
=end
  
  puts "Enter the number"
  numInput = gets.chomp.to_i

    def prime_checker(num)
        if num == 0 || num == 1
        return false
        end
        is_prime = true
       for i in 2..num-1
        if num % i == 0
         is_prime = false
         break             #once it is found that it is not prime number, breaking the loop 
        end
    end
        return is_prime
    end

    result = prime_checker(numInput)
    puts result

    
        
     
   
   
   
   
    