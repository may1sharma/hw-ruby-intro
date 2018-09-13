# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0
  arr.sort.last(2).each { |a| result+=a }
  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  arr.combination(2).any? {|n1, n2| return true if ((n1 + n2) == n) }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if !(s!=nil && s!="" && s.instance_of?(String))
  s = s.upcase
  first = s[0]
  return true if((first>'A' && first<'E') || (first>'E' && first<'I') || (first>'I' && first<'O') || (first>'O' && first<'U') || (first>'U' && first<='Z'))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[10]*00$/ || s =="0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price<=0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$%.2f" % price
  end
end
