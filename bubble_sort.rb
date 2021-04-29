def bubble_sort(arr)
    p1 = 0
    p2 = 1

    def picker(arr, p1, p2)
        return {
            "v1": arr[p1],
            "v2": arr[p2]
        }
    end

    def swap(arr, p1, p2)
        values = picker(arr, p1, p2)
        # arr.delete_at(p2)
        # arr.delete_at(p1)
        

        arr[p1] = values[:v2]
        arr[p2] = values[:v1]

        return arr
        # isSwapped = true
        # puts picker(arr, p1, p2)

        # return values[:v1]
    end

    puts swap(arr, p1, p2)

    # isSwapped = false
    # sorted = false

    

    # until sorted
    #     swap
    #     puts arr
    # end
end

bubble_sort([5, 4, 3, 6, 8, 7])