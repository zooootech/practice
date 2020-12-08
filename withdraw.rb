def withdraw(balance, amount)
  fee = 110 # 手数料
  # 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
  if balance < amount + fee
    puts "残高不足です"
  else
    puts "#{amount}円引き落としました。残高は#{balance - (amount + fee)}円です" 
  end
end

balance = 100000 # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i
withdraw(balance, amount)

# 以下のように書き換え

def withdraw(balance, amount)
  fee = 110
  if balance >= (amount + fee)
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i
withdraw(balance, amount)