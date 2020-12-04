def parrot_trouble(talking, hour)
  # 「A && B」で「AかつB」を表すことができる演算子「&&」
  # 「A || B」で「AまたはB」を表すことができる演算子「||」
  if talking && (hour < 7 || hour >= 20)
    puts "NG"
  else
    puts "OK"
  end
end

# ーーーーーーーーーーーーーーーーーーーーーーーーーーー

# その日が遅くまで寝ていられるかどうかを判断するメソッド
# 休みの場合はTrueを、休みでない場合はFalseを出力
def sleep_in(is_weekday, is_vacation)
  # 月〜金曜日ではない場合、または、祝日などの休暇日の場合
  if is_weekday != true || is_vacation == true
    puts "True"
  else
    puts "False"
  end
end