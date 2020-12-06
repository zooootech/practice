# 付与されるポイントを出力するメソッド
# 購入金額が999円以下の場合、3%のポイント
# 購入金額が1000円以上の場合、5%のポイント
# ただし誕生日の場合はポイントが5倍
def calculate_points(amount, is_birthday)
  if amount <= 999
    point = amount * 0.03
  else
    point = amount * 0.05
  end
  if is_birthday
    point = point * 5
  end
  puts "ポイントは#{point.floor}点です"
end