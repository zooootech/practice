def check_name(str) 
  # include?メソッドは指定した要素が、配列や文字列内に含まれているかを判定するメソッド
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end
puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 