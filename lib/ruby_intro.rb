# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  for i in arr do
    sum+=i
  end
  return sum
end

def max_2_sum(arr)
  sum = 0
  if arr.length == 0
    return sum 
  elsif arr.length == 1
    return arr[0]
  end
  if arr[0] > arr[1]
    one = arr[0]
    two = arr[1]
  else
    one = arr[1]
    two = arr[0]
  end

  for i in 2..arr.length-1 do
    if arr[i] > one
      two = one
      one = arr[i]
    elsif arr[i] > two
      two = arr[i]
    end
  end
  return one + two    
end


def sum_to_n?(arr, number)
  hash = Hash.new(0)
  for i in arr do
    if not hash.key?(i)
      hash[i] = 0
    end
    hash[i]+=1
  end
  for i in arr do
    hash[i]-=1
    if hash[number-i] > 0
      return true
    end
    hash[i]+=1
  end
  return false
  # puts(hash)  
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  return (string.match(/\A[a-zA-Z]/) and !string.match(/\A[aeiouAEIOU]/))
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  if (string.match(/\D/) or string.empty?)
    return false
  end
  num = string.to_i
  return num%4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
