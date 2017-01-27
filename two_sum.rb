def two_sum(nums, target)
  map = {}
  nums.each_with_index do |num, index|
    i = map[target - num]
    return [i, index] if i
    map[num] = index
  end
  return 0
end

nums_input = []

while true
  print "enter nums: "
  num = $stdin.gets.chomp
  if num == "end"
    break
  else
    nums_input.push(num.to_i)
  end
end

print "enter target: "
target_input = $stdin.gets.chomp.to_i

puts two_sum(nums_input, target_input)
