# バイナリーサーチ（2分割検索）とは、ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行うときに用いられる手法
# ソートとは、特定の規則に従ってデータを並びかえること
# ソートには「昇順」と「降順」という2つの表示の仕方がある
def binary_search(array, number_of_elements, target)
  # 配列の要素の添字の左端
  left = 0
  # 配列の要素の添字の右端
  right = number_of_elements - 1
  # 以下、while文で「中央の要素の定義」、「検索したい値が中央の要素の左右どちらにあるか」を確かめながら検索を行う
  while left <= right
    # 配列内の、指定した添字間の要素数を半分にしたものを変数centerに代入
    center = (left + right) / 2
    # 入力した値が見つかった場合、その添字を返す
    if array[center] == target
      return center
    elsif array[center] < target
      # 次の繰り返し処理の左端の添字が、元々中央に位置していた添字の1つ右側にずれる
      left = center + 1
    else
      # 次の繰り返し処理の右端の添字が、元々中央に位置していた添字の1つ左側にずれる
      right = center - 1
    end
  end
  # 任意の値が配列内に存在しない場合の戻り値を、適当に設定
  return -1 
end

# 昇順でソートされた配列
array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
target = gets.to_i
# 要素の数を変数に代入
number_of_elements = array.length

# binary_searchメソッドでの処理の戻り値を変数resultに代入
result = binary_search(array, number_of_elements, target)

if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します "
end

# ーーーーーーーーーーーーーーーーーーーー

# たとえば、targetとして31を入力した場合

# #1回目のループ
# leftは0
# rightは9
# 5行目：centerは4（小数点以下は切り捨てされます）
# 6行目：if array[center]==31
#           #=>array[center]は9なのでfalse
# 8行目：elsif array[center] < target
#           #=>array[center]は9であり、31より小さいのでtrue
# 11行目：leftはcenterに+1して5となる 

# #2回目のループ
# leftは5
# rightは9
# 5行目：centerは7
# 6行目：if array[center]==31
#           #=>array[center]は20なのでfalse
# 8行目：elsif array[center] < target
#           #=>array[center]は20であり、31より小さいのでtrue
# 11行目：leftはcenterに+1して8となる 

# #3回目のループ
# leftは8
# rightは9
# 5行目：centerは8
# 6行目：if array[center]==31
#           #=>array[center]は26なのでfalse
# 8行目：elsif array[center] < target
#           #=>array[center]は26であり、31より小さいのでtrue
# 11行目：leftはcenterに+1して9となる 

# #4回目のループ
# leftは9
# rightは9
# 5行目：centerは9
# 6行目：if array[center]==31
#           #=>array[center]は31なのでtrue