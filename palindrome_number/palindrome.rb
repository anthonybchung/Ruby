def second_index(arr)
  arr_length = arr.length()
  if(arr_length%2 == 0)
    start_index = arr_length/2
  else
    start_index = arr_length/2.to_i + 1
  end
  return start_index
end


def second_array(arr)
  start_second = second_index(arr)
  return arr[start_second..-1]
end

def first_array(arr)
  arr_length = arr.length()
  start_second = second_index(arr)
  if(arr_length%2 == 0)
    finish_first = start_second - 1
  else
    finish_first = start_second - 2
  end
  return arr[0..finish_first]
end

# returns true if first sub == second sub reverse
def is_two_sub_equal(sub1,sub2)
  str1 = sub1.join("")
  str2 = sub2.reverse.join("")
  if(str1 == str2)
    ans = true
  else
    ans = false
  end

  return ans
end

def is_palindrome(x)
    arr = x.to_s.split("")
    if(arr.length() != 1)
      first = first_array(arr)
      second = second_array(arr)
      ans =  is_two_sub_equal(first,second)
    else
      ans = true
    end
    return ans
end

