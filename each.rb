fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

# eachの入れ子構造
fruits_price.each do |fruit|
  # この時点での1回目の繰り返し処理では、ブロック変数fruitには、配列の要素である["apple", [200, 250, 220]が格納される
  sum = 0
  # fruit[1]とすることで、["apple", [200, 250, 220]の添え字(インデックス番号)が1である[200, 250, 220]が取得できる
  fruit[1].each do |price|
    # この時点での1回目の繰り返し処理では、ブロック変数priceには、配列[200, 250, 220]の要素である200が格納される
    # 今回の場合、1つの果物につき3回金額が足される
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
  # この時点でfruits_priceの1回分の繰り返し処理が終わり、まだ繰り返されるべきfruits_priceの要素が残っている場合、再び4行目からの処理が行われる
end