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
print "how many num ?: "
num_count = $stdin.gets.chomp.to_i
c = 0

loop do
  print "enter nums: "
  num = $stdin.gets.chomp.to_i
  nums_input.push(num)
  c += 1
  break unless c < num_count
end

print "enter target: "
target_input = $stdin.gets.chomp.to_i

puts two_sum(nums_input, target_input)
