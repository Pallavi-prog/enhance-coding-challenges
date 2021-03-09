=begin

Given two arrays of equal length, write a function that returns the largest value that can be
obtained by multiple each number in one array by one number in the other, using each
number in each array only once.

=end


# Declaring empty arrays 
array1Input = []
array2Input = []

# Method to validate input
def checkifnumber?(obj)
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match obj
end

 # Method to find largest dot product
def largest_dot_product( array1, array2)
  #array1 = [3, 1, 7]
  #array2 = [5, 4, 6]
  
  array1 = array1.sort
  array2 = array2.sort
  result = 0
    
   for i in 0..array1.length()-1 do
      result += array1[i] * array2[i]
   end
      return result
   end
  
   
    puts "Enter the length of arrays"
      arraylength = 0
    loop do
      arraylength = gets.chomp
      break if checkifnumber?(arraylength)
      puts "array length shoud be integer, please re-enter array length"
    end

    for i in 0..arraylength.to_i-1
      arrayItem = 0
      puts "Enter the number in position #{i + 1} in first array"
      loop do
        arrayItem = gets.chomp
        break if checkifnumber?(arrayItem)
        puts "Not valid integer, please re-enter the number in position #{i + 1} in first array"
      end
      array1Input.push(arrayItem.to_i)
    end

      for i in 0..arraylength.to_i-1
        arrayItem = 0
        puts "Enter the number in position #{i + 1} in second array"
        loop do
          arrayItem = gets.chomp
          break if checkifnumber?(arrayItem)
          puts "Not valid integer, please re-enter the number in position #{i + 1} in first array"
        end
        array2Input.push(arrayItem.to_i)
      end

     result = largest_dot_product(array1Input, array2Input)
     puts "The largest value obtained is #{result}"
     





