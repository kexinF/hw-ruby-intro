# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length <= 2
    return sum(arr)
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  flag = false
  for tmp in arr.permutation(2) do
    if sum(tmp) == n
      flag = true
    end 
  end 
  return flag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  tmp = s.downcase[0]
  if s.length == 0 or !tmp.match(/[a-z]/)
    return false
  end
  if ['a', 'e', 'i', 'o', 'u'].include?(tmp)
    return false
  else
    return true 
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0 or s.count('01') != s.length
    return false
  else
    return (s.to_i % 4 == 0)
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader :isbn, :price
  def isbn=(isbn)
    if isbn.length == 0
      raise ArgumentError.new("Use Valid ISBN")
    end 
    @isbn=isbn
  end
  
  def price=(price)
    if price.to_f <= 0
      raise ArgumentError.new("Use Valid price")
    end
    @price = price.to_f
  end
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def price_as_string
    return '$'+ ('%.2f' % @price).to_s
  end
end
