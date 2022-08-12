Roman_digit= {
  :I => 1,
  :V => 5,
  :X => 10,
  :L => 50,
  :C => 100,
  :D => 500,
  :M => 1000
}

def roman_to_int(s)
    
  arr = s.split("")
  arr_length = arr.length
  index_sym = arr[0].to_sym
  sum = Roman_digit[index_sym]
  index = 1
  while index < arr_length do
    curr_sym = arr[index].to_sym
    prev_sym = arr[index-1].to_sym
    curr = Roman_digit[curr_sym]
    prev = Roman_digit[prev_sym]

    if (curr > prev)
      sum = sum + curr - 2* prev
    else
      sum = sum + curr
    end
    index += 1
  end
  sum
end
