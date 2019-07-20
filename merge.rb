def merge_sort(array)
    sorted_array = []
    return array if array.size < 2
    left,right = array.each_slice((array.size / 2.0).round).to_a
    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    while sorted_left != [] || sorted_right != []
        if sorted_left[0].nil?
            sorted_array << sorted_right[0]
            sorted_right.shift
        elsif sorted_right[0].nil?
            sorted_array << sorted_left[0]
            sorted_left.shift
        elsif sorted_left[0] <= sorted_right[0]
            sorted_array << sorted_left[0]
            sorted_left.shift
        else
            sorted_array << sorted_right[0]
            sorted_right.shift
        end
    end
    return sorted_array
end

p merge_sort([4,8,2,3,1,5,7,6])