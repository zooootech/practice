class Car

  def initialize(car_type, capacity)
    @name = car_type
    @capacity = capacity
  end
 
  def info
    puts "車種：#{@name} 乗車定員：#{@capacity}人"
  end

end

car = Car.new("車", 6)

car.info

# ターミナル出力結果
# 車種：車 乗車定員：6人

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# あるクラスを継承して新しいクラスを作る場合には、「新しいクラス < 元となるクラス」と記述
# 新しいクラスを子クラス（またはサブクラス）、元になったクラスを親クラス（またはスーパークラス）と呼ぶ
# クラスの継承を使えば、共通する部分をまとめることができて効率的
# クラスを継承すると、親のインスタンス変数、親のインスタンスメソッドが引き継がれる
class PoliceCar < Car
  
  # 子クラスに独自のインスタンスメソッドを追加
  def siren
    puts "ウゥ〜ウゥ〜"
  end

  # 親クラスにあるメソッドと同じ名前のメソッドを子クラスで定義すると、メソッドを上書きすることができる
  # これをメソッドの「オーバーライド」と呼ぶ
  def info
    puts "車種：#{@name} 乗車定員：#{@capacity}人 パトロール時間：24時間"
  end

end

# 継承元のCarクラスのインスタンスメソッドinitialize、およびインスタンス変数@nameと@capacityを使用
police_car = PoliceCar.new("パトカー", 5)

police_car.siren

# ターミナル出力結果
# ウゥ〜ウゥ〜

# ーーーーーーーー

police_car.info

# ターミナル出力結果
# 車種：パトカー 乗車定員：5人 パトロール時間：24時間