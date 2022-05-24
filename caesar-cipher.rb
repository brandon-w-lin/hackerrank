def alpha?(s)
  "abcdefghijklmnopqrstuvwxyz".include? s
end

# .chr converts to
def fn(s, n)
  if !alpha?(s.downcase)
    return s
  else
    if s.ord >= "a".ord
      start = "a".ord
      position = (s.ord - "a".ord + n) % 26
    else
      start = "A".ord
      position = (s.ord - "A".ord + n) % 26
    end
    return (start + position).chr
  end
end

def caesarCipher(s, k)
  # Write your code here

  return s.split("").map { |i| fn(i, k) }.join("")
end

# p fn("Z", 0)
# p fn("Z", 1)
puts caesarCipher("middle-Outz", 2)
