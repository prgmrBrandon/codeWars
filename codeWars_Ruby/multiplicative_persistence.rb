# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
# For example:
 # persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4, and 4 has only one digit

 # persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126, 1*2*6=12, and finally 1*2=2

 # persistence(4) # returns 0, because 4 is already a one-digit number
 

# My Answer
def persistence(num)
  number = 0
    while num > 9 do
      num = num.to_s.split(//).map{ |x| x.to_i}.inject(:*)
      number += 1      
    end
  number
end

#Best Practices
def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end