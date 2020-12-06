def end_other(a, b)
  a_len = a.length
  b_len = b.length
  if (a_len >= b_len && a.downcase.slice(-b_len..-1) == b.downcase) || (a_len < b_len && b.downcase.slice(-a_len..-1) == a.downcase)
    puts "True"
  else 
    puts "False" 
  end
end

end_other('abc', 'abXabc')

# ーーーーーーーーーー
# 以下のように書き換え

def end_other(a, b)
  # 大文字と小文字を区別しないという条件
  # 大文字を小文字に変換するためにはdowncaseメソッドを使用する
  # 小文字に変換したものをそれぞれ変数に代入
  a_down = a.downcase
  b_down = b.downcase
  # それぞれの文字数を変数に代入
  a_len = a_down.length
  b_len = b_down.length
  # どちらかの文字列がもう一方の文字列の最後にある場合を区別するための処理
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end

end_other('abc', 'abXabc')


# sliceの範囲指定
# 範囲を指定して要素を切り取る場合は、以下のように記述して使うことができる

  # 要素を定義
  # array = "Hiabc"

  #配列番号（インデックス番号）の-3から-1の範囲の文字列を切り取る
  # array.slice(-3..-1)
  #=> abc