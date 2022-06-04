# def minimumBribes(q)
#   # Write your code here
#   i = 0
#   count = 0
#   while i < q.length
#       if q[i] - (i+1) > 2
#           output = "Too chaotic"
#       elsif q[i] - (i+1) > 0
#           count += (q[i] - (i+1))
#       end
#       i +=1
#   end
#   puts output || count
#   # return count
# end

def minimumBribes(q)
  # Write your code here
  i = 0
  count = 0
  tc = false
  while i < q.length
    j = i
    tmp = 0
    while j < q.length
      tmp += 1 if q[j] < q[i]
      j += 1
    end
    if tmp > 2
      tc = true
    else
      count += tmp
    end
    i += 1
  end
  puts tc ? "Too chaotic" : count
end

minimumBribes([2, 5, 1, 3, 4])
minimumBribes([5, 1, 2, 3, 7, 8, 6, 4])
