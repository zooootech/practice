def registration_student(students)
  # 生徒の名前と年齢を登録できるようにする
  # ハッシュの宣言
  student = {}
  puts '生徒名を入力してください'
  # nameというキーと、それに対応する入力された値をstudentハッシュに追加
  # chompメソッドを使用し、文字列の末尾に存在する改行を取り除いた文字列を返す
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  # ageというキーと、それに対応する入力された値をstudentハッシュに追加
  student[:age] = gets.chomp

  # 登録した生徒の国語、数学、英語の点数を登録できるようにする
  puts "国語の得点は？"
  # japaneseというキーと、それに対応する入力された値をstudentハッシュに追加
  student[:japanese] = gets.to_i
  puts "数学の得点は？"
  # mathというキーと、それに対応する入力された値をstudentハッシュに追加
  student[:math] = gets.to_i
  puts "英語の得点は？"
  # englishというキーと、それに対応する入力された値をstudentハッシュに追加
  student[:english] = gets.to_i

  # 生徒1人分の登録情報をstudents配列に追加
  students << student
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示する
  # 一覧で表示したい場合はeachメソッドを使う
  i = 0
  # each文はスコープの外で定義された変数を使うことができる
  students.each do |student|
    # 番号と生徒の名前を表示
    puts "#{i}: #{student[:name]}"
    # 次の繰り返し処理で、1プラスされた番号を表示するための記述
    i += 1
  end
  puts '見たい生徒の番号を入力してください'
  num = gets.to_i

  student = students[num]
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにする
  puts "名前: #{student[:name]}"
  puts "年齢: #{student[:age]}"
  puts "国語: #{student[:japanese]}"
  puts "数学: #{student[:math]}"
  puts "英語: #{student[:english]}"
end

# 配列の宣言
students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end