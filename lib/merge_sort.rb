def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []
  left_idx = 0
  right_idx = 0

  while left_idx < left.length && right_idx < right.length
    if left[left_idx] <= right[right_idx]
      result << left[left_idx]
      left_idx += 1
    else
      result << right[right_idx]
      right_idx += 1
    end
  end

  result.concat(left[left_idx..-1]) if left_idx < left.length
  result.concat(right[right_idx..-1]) if right_idx < right.length

  result
end