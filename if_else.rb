def in1to10(num, outside_mode)
  # 数値numが1以上かつ10以下の範囲、または、outside_modeがTrueの場合は数値numが0以下、11以上であってもTrueを出力
  # ()で囲う点がポイント
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end

# ーーーーーーーーー

# 正の整数を入力し、その整数が、10の倍数（10,20,30...）からの差が2以内であるときはTrue、それ以外はFalseと出力するメソッド
def near_ten(num)
  # 変数quotientに一の位の値を代入
  quotient = num % 10
  # 「0,1,2,8,9」のどれかに当てはまるかどうかを確認
  if quotient <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
  end
end