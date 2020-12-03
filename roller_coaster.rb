# ⑤配列friendsが仮引数listに渡され、judge_heightメソッドが実行される
def judge_height(list)
  # ride_countという変数を初期化
  ride_count = 0

  # 配列friendsの要素が1つずつブロック変数friendに代入され、要素の数（今回は3つ）だけ繰り返し処理が行われる
  list.each do |friend|
    if friend[:height] >= 130
      puts "#{friend[:name]}くんは乗車できます"
      ride_count += 1
    else
      puts "#{friend[:name]}くんは乗車できません！"
    end
  end

  # 繰り返し処理が全て終わった後に乗車人数を出力
  puts "乗車するのは#{ride_count}人です"
end

# ③配列friendsが仮引数listに渡され、add_friendメソッドが実行される
def add_friend(list)
  # friendというハッシュを用意
  friend = {}
  puts "お友達の名前は？"
  # nameというキーと入力された値が、ハッシュの要素として追加される
  # getsメソッドはデフォルトで文字列の末尾に改行が存在するため、chompメソッドを使用することで、文字列の末尾に存在する改行を取り除いた文字列を返すことができる
  friend[:name] = gets.chomp
  puts "お友達の身長は？"
  # heightというキーと入力された値が、ハッシュの要素として追加される
  # getsメソッドで入力された値はデフォルトでは文字列としてプログラムに渡されるので、to_iメソッドで文字列を数値に変換
  friend[:height] = gets.to_i
  # 配列friendsにfriendという要素を追加
  list << friend
end

# ①friendsという配列を用意
friends = []

# ②3回add_friendメソッドの処理を繰り返す
3.times do
  # add_friendメソッドを呼び出し、その処理の結果を配列freindsに代入
  # その際、実引数として配列friendsを仮引数listに渡し、add_friendメソッド内の処理を実行
  friends = add_friend(friends)
end

# ④配列friendsを実引数とし、judge_heightメソッドを実行
# この時点で、配列friendsには3つの要素が含まれている
judge_height(friends)