puts "二桁の整数を入力してください"
num = gets.to_i

plus_num = (num / 10 % 10) + num % 10
times_num = (num / 10 % 10) * num % 10

puts " 足し算結果と掛け算結果の合計値は#{plus_num + times_num}です"

# ーーーーーーーーーー
# 以下のように書き換え

def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  # 整数を10で割ったものを更に10で割った計算結果の余りが10の位
  tens_place = (num / 10) % 10
  # 1の位
  # 整数を10で割った計算結果の余りが1の位
  ones_place = num % 10
  # returnを使い、上記2つのコードの結果を戻り値として返す
  # メソッド内でreturn ◯◯と記述すると、returnの後ろに続けた式がそのメソッドの戻り値になる
  # returnを利用した時点で戻り値が決まり、メソッドはその行の処理を終えると強制的に終了する
  # returnがない場合、メソッドの戻り値はそのメソッドの中で最後に実行された式の値となるため、今回の場合、ones_placeの値のみとなる
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
# 入力にはgetsメソッドを利用し、数値型に変換
input = gets.to_i
# 変数を定義する際に、カンマで区切ることによって、同時に複数の変数を定義することができる
# slice_numメソッドで返されたtens_place, ones_placeをX, Yにそれぞれ代入
X, Y = slice_num(input)
# X, Yを実引数としたadditionメソッドの処理結果を変数に代入
add_result = addition(X, Y)
# X, Yを実引数としたmultiplicationメソッドの処理結果を変数に代入
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"