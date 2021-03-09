=begin

Given two strings, write a function to check if they are an anagram of each other, i.e. they
have the same characters but in a different order. Your function should return true for the
case when the two strings are anagrams for each other and false in all other cases.
    
=end

    def isAnagram(string1, string2)
     
      # Converting strings to array
       array_one = string1.split(//)
       array_two = string2.split(//)
       puts "Compairing #{string1} and #{string2}"
     
       # Sorting elements in array
       array_one = array_one.sort 
       array_two = array_two.sort

     # Compairing two arrays
      if (array_one == array_two)
        return true
       else
        return false
       end
      end
 
    result1 = isAnagram("cat","act")
    result2 = isAnagram("triangle","integral") 
    result3 = isAnagram("wool", "howl")
    puts result1
    puts result2  
    puts result3
