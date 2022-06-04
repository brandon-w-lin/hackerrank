def breakdown(p)
  return p.split("").map { |i| i.to_i }.sum.to_s
end

def superDigit(n, k)
  # Write your code here
  puts "for case n = #{n} and k = #{k}"
  p = n.to_s * k
  while p.length > 1
    puts "starting with: #{p}"
    puts "breaks down to: #{breakdown(p)}"
    p = breakdown(p)
  end
  return p
end

puts superDigit(98751314134534513452345234523897123798, 1000)
# puts superDigit(123, 3)
# puts superDigit(1, 3)
# puts superDigit(0, 1)
# puts superDigit(3, 1)
