# frozen_string_literal: true

def bubble_sort(arr)
  $arr = arr

  $p1 = 0
  $p2 = 1

  $isSwapped = true
  $sorted = false
  $counter = 0

  def picker(p1, p2)
    {
      "v1": $arr[p1],
      "v2": $arr[p2]
    }
  end

  def swap
    values = picker($p1, $p2)

    v1 = values[:v1]
    v2 = values[:v2]

    if v1 > v2
      $arr[$p1] = v2
      $arr[$p2] = v1
      $isSwapped = true
    end
  end

  def reset
    $p1 = 0
    $p2 = 1
    $isSwapped = false
  end

  until $sorted
    if $p2 == $arr.length
      if $isSwapped
        reset
      else
        $sorted = true
        return $arr
      end
    else
      swap

      $p1 += 1
      $p2 += 1
    end
  end
end

puts bubble_sort([5, 4, 3, 6, -6, 3, 4, 5, 3, 3, 4, -1])

def bubble_sort_by(arr)
  $arr = arr

  $p1 = 0
  $p2 = 1

  $isSwapped = true
  $sorted = false
  $counter = 0

  until $sorted
    if $p2 == $arr.length
      if $isSwapped
        reset
      else
        $sorted = true
        return arr
      end
    else
      values = picker($p1, $p2)

      v1 = values[:v1]
      v2 = values[:v2]

      if (yield $arr[$p1], $arr[$p2]).to_i >= 0
        $arr[$p1] = v2
        $arr[$p2] = v1
        $isSwapped = true
      end

      $p1 += 1
      $p2 += 1
    end
  end
end

puts bubble_sort_by(%w[hi hello hey f dfhhkdfhk fnhdbyejhndhgbdhg]) { |left, right|
  left.length - right.length
}
