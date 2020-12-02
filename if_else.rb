def in1to10(num, outside_mode)
  # 数値numが1以上かつ10以下の範囲、または、outside_modeがTrueの場合は数値numが0以下、11以上であってもTrueを出力
  # ()で囲う点がポイント
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end