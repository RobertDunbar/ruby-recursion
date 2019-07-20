def fibs(num)
    return [0] if num == 0
    return [0,1] if num == 1
    array = [0,1]
    2.upto(num) { |n| array[n] = array[-2] + array[-1] }
    return array
end

def fibs_rec(num, arr=[0,1])
    return num == 0 ? [0] : num == 1? arr : fibs_rec(num - 1, arr << arr[-2] + arr [-1])
end

p fibs (10)
p fibs_rec (10)