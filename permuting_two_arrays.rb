def twoArrays(k, a, b)

  a.sort!
  b.sort! {|x,y| y <=> x}
  
  i = 0
  valid = true
  while i < a.length
      if a[i] + b[i] < k
          valid = false
      end
      i +=1
  end
  return valid ? "YES" : "NO"
end