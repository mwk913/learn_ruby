def add(x, y)
    return x + y
end

def subtract(x, y)
    return x - y
end

def sum(nums)
    nums.inject(0){|total, nums| total+nums}
end
