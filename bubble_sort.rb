def bubble_sort(arr)
    $arr = arr

    $p1 = 0
    $p2 = 1

    $isSwapped = true
    $sorted = false
    $counter = 0

    def picker(p1, p2)
        return {
            "v1": $arr[p1],
            "v2": $arr[p2]
        }
    end

    def swap()
        values = picker($p1, $p2)  

        v1 = values[:v1]
        v2 = values[:v2]

        if v1 > v2
            $arr[$p1] = v2
            $arr[$p2] = v1
            $isSwapped = true
            puts $arr
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
                reset()
                puts $arr
            else
                $sorted = true
                puts $arr
                puts "Sorted!"
            end
        else
            swap()

            $p1 += 1
            $p2 += 1
        end
    end
end

bubble_sort([5, 4, 3, 6,-6,3,4,5,3,3,4,-1])