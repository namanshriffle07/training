$arr = [1, 5, 10, 15, 20, 25, 30, 35]

def binary_search(val)
    low = 0
    high = $arr.length - 1

    while low <= high 
        mid = (low + high)/2
        if val == $arr[mid]
            return mid 
        elsif $arr[mid] < val
            low = mid + 1
        else
            high = mid - 1
        end 
    end 
end 

puts binary_search(35)

            