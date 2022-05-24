def gridChallenge(grid)
  split_rows = []
  grid.each_with_index { |row, index| split_rows[index] = row.split("") }
  sorted_rows = split_rows.map { |row| row.sort }
  cols = sorted_rows.transpose()
  sorted_cols = cols.map { |col| col.sort }

  return cols == sorted_cols ? "YES" : "NO"
end

p gridChallenge(["ebacd", "fghij", "olmkn", "trpqs", "xywuv"])
p gridChallenge(["mpxz", "abcd", "wlmf"])
