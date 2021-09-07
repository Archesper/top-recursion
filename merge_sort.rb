def merge_sort(arr)
  if arr.length <= 1
    return arr
  else
    left_half = merge_sort(arr[0...arr.length/2])
    right_half = merge_sort(arr[arr.length/2..-1])
    return merge_arrays(left_half, right_half)
  end
end

def merge_arrays(arr1, arr2)
  merged_arr = []
  cursor1 = 0
  cursor2 = 0
  # Loop until both cursors leave array index range
  until cursor1 == arr1.length && cursor2 == arr2.length
    # If one array has one more element than the other (in case of uneven lengths)
    # push that element, else, push the smallest element
    if arr1[cursor1].nil?
      merged_arr << arr2[cursor2]
      cursor2 += 1
    elsif arr2[cursor2].nil? 
      merged_arr << arr1[cursor1]
      cursor1 += 1
    else
      if arr1[cursor1] < arr2[cursor2]
        merged_arr << arr1[cursor1]
        cursor1 += 1
      else
        merged_arr << arr2[cursor2]
        cursor2 += 1
      end
    end
  end
  return merged_arr
end