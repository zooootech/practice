# xyzの直前にピリオド（.）がない場合はTrueを出力
# ピリオド（.）がある場合はFalseを出力
# 上記2つの条件に当てはまらない場合はFalseを出力
# ただし、'xyabcz'のような文字列は想定せず、'xyz'は連続して存在するものとする
def xyz_there(str) 
  # ポイントは、str.include?(".xyz")の条件式をstr.include?("xyz")より前に設置すること
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end