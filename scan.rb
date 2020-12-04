def count_hi(str)
  # scanは、対象の要素から引数で指定した文字列を数え、配列として返すメソッド
  # 配列の中の要素の数をlengthメソッドで数える
  puts str.scan("hi").length
end

count_hi('abc hi ho')
count_hi('ABChi hi')
count_hi('hihi')