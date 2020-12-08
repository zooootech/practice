# 1〜100までの数字をターミナルに出力
# 「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzz、3と5の倍数である「15の倍数」のときはFizzBuzzと出力
def fizz_buzz
  100.times do |i|
    if (i + 1) % 15 == 0
      puts "FizzBuzz"
    elsif (i + 1) % 3 == 0
      puts "Fizz"
    elsif (i + 1) % 5 == 0
      puts "Buzz" 
    else
      puts (i + 1)
    end
  end
end

fizz_buzz

# ーーーーーーーーーーー
# 以下のように書き直せる

def fizz_buzz
  # 変数の初期化
  num = 1
  # 条件を指定して繰り返し処理をする場合は、whileというメソッドを使う
  # 指定した条件が真である間、処理を繰り返す
  # 「do」は省略可
  while num <= 100 do
    # 先に15の倍数についての条件式を記述するのがポイント
    # 後に書いた場合、15の倍数は3の倍数もしくは5の倍数の条件式のところでtrueとなってしまい、実行されない
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end

    # numに1を加算して、次の繰り返し処理へ
    # 以下の記述がないと、whileの後の条件式が常にtrueとなるため、無限ループが発生する
    num = num + 1
  end
end

fizz_buzz