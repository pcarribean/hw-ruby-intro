# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each do |ele|
    result += ele
  end
  return result
end

def max_2_sum arr
  # YOUR CODE HERE
  max1 = 0
  max2=0
  i=0
  maxpos1=-1
  for ele in arr do
    if i==0
      max1 = ele
      maxpos1 = i
    elsif max1< ele
      max1=ele
      maxpos1 = i
    end
    i+=1
  end
  if i>1
    i=0
    j=0
    for ele in arr do
      if i!=maxpos1 && j==0
        max2 = ele
        j+=1
      elsif i!=maxpos1 && max2<ele
        max2=ele
      end
      i+=1
    end  
  end
  
  result =  max1 + max2
  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sorted_arr = arr.sort
  i=0
  size1 = arr.size
  j = size1-1
  flag=false
  while i<size1 && i<j && flag==false
    if sorted_arr[i]+sorted_arr[j]==n
      flag=true
    elsif sorted_arr[i]+sorted_arr[j]<n
      i+=1
    elsif sorted_arr[i]+sorted_arr[j]>n
      j-=1
    end
  end
  return flag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size > 0
    str = ""+s[0,1]
    if !(str !~ /[[:alpha:]]/)
      if str =~ /[^AEIOUaeiou]/
        return true
      end
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  len = s.length
  if len>0
    if s !~ /[^01]/
       
      if len ==1 and s[len-1]=='0'
        return true
      elsif len >1 and s[len-1]=='0' and s[len-2]=='0'
        return true
      end
    end
  end
  return false
end


# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    # instance variable intialzation
    if isbn=="" or price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  # display method
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end  

  def price_as_string
    return "$"+ "#{'%.02f' % @price.round(2)}" 
  end
end
