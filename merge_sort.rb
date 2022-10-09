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

