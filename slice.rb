# 任意の文字に対してn番目の文字を消し、その消した文字を出力するメソッド
# missing_charメソッドの引数strには入力した文字列、nは何番目の文字列を消すのか指示する数字を入れる仕様
def missing_char(str, n)
  # sliceメソッドを用いることで、配列や文字列から指定した要素を取り出すことができる
  # sliceメソッドは文字列自体の形を変化させることはできない
  # 任意の文字に対してn番目の文字を消すために、文字列自体から取得した値を取り除く、slice!メソッドを使用
  # 末尾にエクスクラメーションマーク(!)のつくメソッドを破壊的メソッドという
  # これはもとの配列や文字列を変化させるメソッドで、slice!メソッドを使用することで、指定した要素を削除することができる
  # 文字列の順番を指定する際も、配列と同じように先頭の文字列は0からカウントされるため、nから1を引いた数を引数にする
  str.slice!(n - 1)
  puts str
end