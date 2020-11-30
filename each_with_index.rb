# メソッドでは戻り値をメソッド呼び出し元に返すことができる
# 例えば引数に指定した数値をメソッド側で計算を行い、その結果を呼び出し元に返すといったことができる
def search(target_num, input)
  # each_with_indexはRubyに標準で組み込まれているメソッドの1つ
  # 要素の繰り返し処理と同時に、その要素が何番目に処理されたのかも表すことができる
  input.each_with_index do |num, index|
    if num == target_num
      puts "#{index + 1}番目にあります"
      # returnとは、定義したメソッドの中の戻り値を返す情報を表す
      # returnのもう一つの特徴としてメソッドの中でreturnを書いた時点で、そのメソッドから抜け出してしまうという特徴がある
      # returnがない場合は一番最後の戻り値が返される
      return
    end
  end
  # 同じsearchメソッド内のreturnが働いた場合、以下の処理は行われない
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(11, input)