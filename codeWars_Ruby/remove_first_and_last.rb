# It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.

# My Answer
def remove_char(s)
  s[1..-2]
end

# Best Practices
def remove_char(s)
  s[1...-1]
end