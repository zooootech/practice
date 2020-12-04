# 配列にある値の中から偶数の数をカウントして出力するメソッド
def count_evens(nums)
  # 配列の中の偶数の数を出力するためにカウントした数を保持するための変数が必要なので、変数countを用意
  # 変数countをeach文のループ処理内に記述すると、処理が繰り返されるたびにcount = 0が実行され、countの数値が0に上書きされてしまう
  # そのため、countの定義はeach文のループ処理外で行う
  count = 0
  nums.each do |num|
    # even?メソッドは、対象の数値が偶数かどうかを判断するメソッド
    # 配列の中の要素を1つずつ取り出し検証
    # 配列の中の要素が偶数であれば、if以下の処理が実行される
    if num.even?
      # 偶数だった場合はcountに1を足していく
      count += 1
    end     
  end
  puts count
end