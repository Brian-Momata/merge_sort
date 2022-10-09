def merge_sort array
  n = array.size
  if n < 2
    array
  else
    left = array[0...(n/2)]
    right = array[(n/2)..n]
    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    merge(sorted_left, sorted_right)
  end
end

def merge(left, right)
  merged_array = []
  l = 0
  r = 0
  while l < left.size && r < right.size
    if left.empty?
      merged_array.concat(right)
    elsif right.empty?
      merged_array.concat(left)
    elsif left[l] < right[r]
      merged_array << left[l]
      l += 1
    else
      merged_array << right[r]
      r += 1
    end
  end

  if l == left.size # Passed through all elements in the left array
    merged_array.concat(right[r..(right.size)])
  elsif r == right.size
    merged_array.concat(left[l..(left.size)])
  end
  merged_array
end
p merge_sort([4, 1, 5, 8, 2, 3])
