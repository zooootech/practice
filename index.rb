def count_code(str)
  # indexメソッドは、文字列や配列の中に指定した文字列が含まれていた場合、その文字列の開始位置を整数の値で返す
  # indexメソッドは、文字列の先頭を0から数えた数字を返すため、+1をしている
  # また、文字列の先頭から検索を開始する場合、第二引数は省略が可能
  puts str.index("code", 0) + 1
end

count_code("codexxcode")
count_code("aaacodebbb")
count_code("cozexxcode")