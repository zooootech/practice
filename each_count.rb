# 任意の3つの数値の合計を出力するメソッド
def lone_sum(ary)
  # 以下、配列から重複しない要素のみを取り出す流れ
  # 空の配列を準備
  uniq_nums = []
  # lone_sumメソッドの引数として指定した配列から要素を一つずつ取得
  ary.each do |num|
    # カウントを設定する
    count = 0
    # 値が重複していないか検証するためのeach文
    ary.each do |i|
      # 重複している値があるか確認し、あった場合countが増える
      if num == i
        count += 1
      end
    end
    # 重複していない値のみ配列に追加（countが1になる為）
    # 重複した値は配列に追加されない（countが２以上になる為）
    if count < 2
      uniq_nums << num
    end
  end

  # uniq_nums配列内の合計
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end

  puts sum

end