# frozen_string_literal: true

def bubble_sort(arr)
  j = 0
  is_swapped = true
  sorted = false

  until sorted
    if j + 1 == arr.length
      if is_swapped
        j = 0
        is_swapped = false
      else
        sorted = true
        return arr
      end
    else
      v1 = arr[j]
      v2 = arr[j + 1]

      if v1 > v2
        arr[j] = v2
        arr[j + 1] = v1
        is_swapped = true
      end

      j += 1
    end
  end
end

puts bubble_sort([5, 4, 3, 6, -6, 3, 4, 5, 3, 3, 4, -1])

def bubble_sort_by(arr)
  j = 0

  is_swapped = true
  sorted = false

  until sorted
    if j + 1 == arr.length
      if is_swapped
        j = 0
        is_swapped = false
      else
        sorted = true
        return arr
      end
    else
      v1 = arr[j]
      v2 = arr[j + 1]

      if (yield arr[j], arr[j + 1]).to_i >= 0
        arr[j] = v2
        arr[j + 1] = v1
        is_swapped = true
      end
      j += 1
    end
  end
end

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
