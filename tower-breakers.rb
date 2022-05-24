#!/bin/ruby

require "json"
require "stringio"

#
# Complete the 'towerBreakers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#

def towerBreakers(n, m)
  # if

  # Write your code here
  # if single move towers
  #   if n is even -> p2 wins
  #   if n is odd -> p1 wins

  # if multi move towers
  #   if n is even -> p2 wins
  #   if n is odd -> p1 wins

  # if m = 1 then p1 has no moves so p2 wins

  return m == 1 || n % 2 == 0 ? 2 : 1
end
