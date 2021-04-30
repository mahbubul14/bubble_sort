def bubble_sort(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i], sorted = true if arr[i] > arr[i + 1]
    end
    break unless sorted
  end
  arr
end

# bubble sort for strings

def bubble_sort_by(arr)
  loop do
    sorted = false
    (arr.length - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i], sorted = true if yield(arr[i], arr[i + 1]).positive?
    end
    break unless sorted
  end
  arr
end
