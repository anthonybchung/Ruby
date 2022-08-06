def two_sum(nums, target)
    nums.each_with_index{ |element,index|
      find_num = search_for(element,target)
      
      start = index + 1
      second_index = index_start(find_num,start,nums)
      if second_index != -1
        return [index,second_index]
      end
    }
end


def search_for(num,target)
  search_for = target - num
  search_for
end

def index_start(num,start,arr)
  index = start
  while index < arr.length() do
    if(num == arr[index])
      return index
    end
    index += 1
  end
  return -1
end