def merge_sort(array)
  if array.size == 1
    return array
  end

  left = merge_sort(array[0...array.size / 2])
  right = merge_sort(array[array.size / 2...array.size])

  merge(left, right)
end

def merge(left, right)
  array = []
  while !left.empty? && !right.empty?
    if left[0] > right[0]
      array.push(right[0])
      right.delete_at(0)
    else
      array.push(left[0])
      left.delete_at(0)
    end
  end
  while !left.empty?
    array.push(left[0])
    left.delete_at(0)
  end
  while !right.empty?
    array.push(right[0])
    right.delete_at(0)
  end
  return array
end

array_size = 25
array = []
array_size.times do
  array.push(rand(array_size))
end

p "Original Array:"
p array

p "Sorted Array:"
p merge_sort(array)
