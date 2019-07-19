def fibs(num)
    return [0] if num == 0
    return [0,1] if num == 1
    array = [0,1]
    2.upto(num - 1) { |n| array[n] = array[n - 2] + array[n-1] }
    return array
end

def fibs_rec(num, arr=[0,1])
    return arr if num < 3
    return fibs_rec(num - 1, arr << arr[-2] + arr [-1])
end

p fibs (10)
p fibs_rec (10)