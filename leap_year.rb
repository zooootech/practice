def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2 # 2月のとき
    # 閏年の条件
    # ① その年が4で割り切れること
    # ② ただし、年が100で割り切れて400で割り切れない場合は閏年ではない
    if year % 4 == 0
      if year % 100 == 0 && year % 400 != 0
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else # 2月以外の月
    days = month_days[month - 1]
  end

  # 戻り値を定義（省略可）
  return days
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"