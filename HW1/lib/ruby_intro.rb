# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  # Empty Array should return 0. 
  if arr == []
  	return 0
  end

  # Adding all elements from the array. 
  sum = 0
  for i in 0...arr.length
  	sum += arr[i]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  
  # Empty array returns 0. 
  if arr == []
  	return 0
  end
  
  # Array with only one element. 
  if arr.length == 1
    return arr[0]
  end
  # Implementing max_2_sum
  if arr[0] > arr[1]
    first = arr[0]
    second = arr[1]
  else
    first = arr[1]
    second = arr[0]
  end
  
  for i in 2...arr.length
    if arr[i] >= first
      second = first
      first = arr[i]
    elsif arr[i] >= second and arr[i] != first
      second = arr[i]
    end
  end
  return (first + second)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  if arr == []
  	return false
  end
  
  if arr.length == 1
    return false
  end

  for i in 0...arr.length
  	for j in (i + 1)...arr.length
  		if arr[i] + arr[j] === n
  			return true
  		end
  	end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}";
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  # Edge Case
  if s == ""
    return false
  end
  
  # Implementing
  for i in 0...s.length
    if s[i] != "1" and s[i] != "0"
      return false
    end
  end
  
  if s.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.size == 0 || price<=0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    format("$%0.2f",@price)
  end
   
end
