def close_far(a, b, c)
  if ((a - b).abs == 1 || (a - c).abs == 1) && (b - c).abs >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 4, 5)

# 以下のように書き換え

def close_far(a,b,c)
  # abcそれぞれの差分を算出し、絶対値に変換
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end