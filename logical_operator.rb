def parrot_trouble(talking, hour)
  # 「A && B」で「AかつB」を表すことができる演算子「&&」
  # 「A || B」で「AまたはB」を表すことができる演算子「||」
  if talking && (hour < 7 || hour >= 20)
    puts "NG"
  else
    puts "OK"
  end
end