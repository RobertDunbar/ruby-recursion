def fibs(num, arr=[0,1])
    return [0] if num == 0
    return arr if num == 1
    2.upto(num) { |n| arr[n] = arr[-2] + arr[-1] }
    arr
end

def fibs_rec(num, arr=[0,1])
    return num == 0 ? [0] : num == 1? arr : fibs_rec(num - 1, arr << arr[-2] + arr [-1])
end

p fibs (10)
p fibs_rec (10)