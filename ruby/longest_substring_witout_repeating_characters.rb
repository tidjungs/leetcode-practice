def length_of_longest_substring s
  m = 0
  (0..s.length - 1).each do |i|
    subs = {}
    word = ""
    (i+1..s.length).each do |j|
      break if subs[s[j - 1]]
      word << s[j - 1]
      m = word.length if word.length > m  
      subs[s[j - 1]] = 1
    end
    break if m == s.length - i || m == 95
  end
  return m
end
