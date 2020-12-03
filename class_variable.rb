class Fruits
  # クラス変数とは、そのクラスの全てのインスタンスで共有される変数
  # クラスメソッドとそのクラスのインスタンスメソッド全てがスコープになり、値も共有される
  # クラス変数sumの初期化
  @@sum = 0

  def self.get_sum
    puts "合計の価格は#{@@sum}円です"
  end

  # インスタンスが生成された瞬間に行われる処理
  def initialize(name, price)
    @name = name
    @price = price
    # インスタンスが生成されるたびに、合計金額にそのインスタンスの金額（price属性）が加算される
    @@sum += @price
  end
end

apple = Fruits.new("リンゴ", 120)
orange = Fruits.new("オレンジ", 200)
strawberry = Fruits.new("イチゴ", 60)

# クラスメソッドget_sumの呼び出し
Fruits.get_sum