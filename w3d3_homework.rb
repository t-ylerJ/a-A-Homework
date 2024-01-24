
##Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).



def sum_to(n)
  if n >= 1
  return 1 if n == 1
  n + sum_to(n - 1)
  end
end



puts sum_to(5)  # => returns 15
puts sum_to(1)  # => returns 1
puts sum_to(9)  # => returns 45
puts sum_to(-8)  # => returns nil

# Write a function add_numbers(nums_array) that takes in an array of Integers 
#and returns the sum of those numbers. Write this method recursively.

def add_numbers(nums_array)
  return 0 if nums_array.empty?
  
  nums_array[0] + add_numbers(nums_array[1..-1]) 
end

puts add_numbers([1,2,3,4]) # => returns 10
puts add_numbers([3]) # => returns 3
puts add_numbers([-80,34,7]) # => returns -39
puts add_numbers([]) # => returns nil

#Let's write a method that will solve Gamma Function recursively. 
#The Gamma Function is defined as Γ(n) = (n-1)!.

# gamma_fnc(0)  # => returns nil
# gamma_fnc(1)  # => returns 1
# gamma_fnc(4)  # => returns 6
# gamma_fnc(8)  # => returns 5040


def ice_cream_shop(flavors, favorite, n = 0)

  return false if n == flavors.length
  return true if flavors[n] == favorite

    ice_cream_shop(flavors, favorite, n + 1)
end



# Write a function ice_cream_shop(flavors, favorite) that takes in
#  an array of ice cream flavors available at the ice cream shop and 
#  the user's favorite ice cream flavor. 
# Recursively find out whether or not the shop offers their favorite flavor.
#base case:  = favorite flavor

puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
puts ice_cream_shop([], 'honey lavender')  # => returns false



Write a function reverse(string) that takes 
in a string and returns it reversed.

def reverse(string)
  return "" if string.empty?
 reverse(string[1..-1]) + string[0]  
end
puts reverse("house") # => "esuoh"
puts reverse("dog") # => "god"
puts reverse("atom") # => "mota"
puts reverse("q") # => "q"
puts reverse("id") # => "di"
# puts reverse("") # => ""