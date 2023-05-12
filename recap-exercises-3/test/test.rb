### no_dupes?

# Write a method `no_dupes?(arr)` that accepts an array as an arg and returns a
# new array containing the elements that were not repeated in the array.
def no_dupes?(arr)
  new_arr=[]
  arr.each_with_index do |ele1,i|
  if ! arr[i+1...arr.length].include?(ele1) &&!arr[0...i].include?(ele1)
 new_arr<<ele1
    end
  end
  new_arr
end

# Examples
# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []

### no_consecutive_repeats?

# Write a method `no_consecutive_repeats?(arr)` that accepts an array as an arg.
# The method should return `true` if an element never appears consecutively in the
# array; it should return `false` otherwise.

def no_consecutive_repeats?(arr)
  if arr.length==1
    return true
  end
  arr.each_with_index do |ele,i|
    if i<arr.length-1
    if arr[i]==arr[i+1]
      return false
    end
  end
end
  return true
end


# Examples
# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true


# Write a method `char_indices(str)` that takes in a string as an arg. The method
# should return a hash containing characters as keys. The value associated with
# each key should be an array containing the indices where that character is
# found.
def char_indices(str)
  count =Hash.new {|hash,k| hash[k]=[]}
  str.each_char.with_index do |char,i|
    count[char]<<i
  end
  count
end

# Examples
# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}




### longest_streak

# Write a method `longest_streak(str)` that accepts a string as an arg. The method
# should return the longest streak of consecutive characters in the string. If
# there are any ties, return the streak that occurs later in the string.
def longest_streak(str)
 new_str=""
  count=Hash.new(0)
  str.each_char.with_index do |char,i|
count[char]+=1
# p
  end
  letter=count.sort_by {|k,v|v}[-1][0]
  n=count.sort_by {|k,v|v}[-1][1]
n.times do 
  new_str+=letter
end
new_str
end

# # Examples
# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'


# Write a method `bi_prime?(num)` that accepts a number as an arg and returns a
# boolean indicating whether or not the number is a bi-prime. A bi-prime is a
# positive integer that can be obtained by multiplying two prime numbers.
def is_prime?(num)
  if num<2
    return false
  end
  # p num
  (2...num).each do |factor|
    if num%factor==0
      return false
    end
  end
  return true
end
p is_prime?(3)
def bi_prime?(num)
(2...num).each do |n1|
(2...num).each do |n2|
if n1*n2==num && is_prime?(n1) &&is_prime?(n2)
  return true
end
end
end
return false
end
# + `14` is a bi-prime because `2 * 7`
# + `22` is a bi-prime because `2 * 11`
# + `25` is a bi-prime because `5 * 5`
# + `24` is not a bi-prime because no two prime numbers have a product of `24`

# ```ruby
# Examples
# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false


Write a method `vigenere_cipher(message, keys)` that accepts a string and a
key-sequence as args, returning the encrypted message. Assume that the message
consists entirely of lowercase alphabetic characters.

vigenere_cipher(message, keys)
encry_mess=""
alphabit="abcdefghijklmnopqrstuvwxyz"
message.each_char do |char|
  keys.each do |k|

  end
end
end
# Examples
vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
vigenere_cipher("zebra", [3, 0])            # => "ceerd"
vigenere_cipher("yawn", [5, 1])             # => "dbbo"