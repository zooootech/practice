def extra_end(string)
  str = string.slice(string.length - 2, 2)
  3.times do
    print str
  end
end

# ーーーーーーーーーー
# 以下のように書き換え

def extra_end(str)
  # 文字列の長さを調べ、変数に代入
  char_num = str.length
  # 文字列の最後の2文字を切り取り、変数に代入
  right2 = str.slice(char_num - 2, 2)
  # 文字を3回繰り返して出力
  puts right2 * 3
end