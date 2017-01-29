def convert(s, num_rows)

    return s if num_rows == 1

    ans = [] 
    i = 0
    rev = false

    (1..num_rows).each { ans.push("") }

    s.split("").each do |c|
      ans[i] << c

      i += rev ? -1 : 1
      
      if i == num_rows
        rev = true
        i -= 2
      elsif i == -1
        rev = false
        i+= 2
      end
      
    end
    return ans.join("")
end

puts convert("ABCEFG", 3)