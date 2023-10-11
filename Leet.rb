# **再チャレンジ C016:Leet文字列**

## **C016:Leet文字列**

#Leet と呼ばれるインターネットスラングがあります。

#Leet ではいくつかのアルファベットをよく似た形の他の文字に置き換えて表記します。 Leet の置き換え規則はたくさんありますが、ここでは次の置き換え規則のみを考えましょう。

#| 置き換え前 | 置き換え後 |
#| --- | --- |
#| A | 4 |
#| E | 3 |
#| G | 6 |
#| I | 1 |
#| O | 0 |
#| S | 5 |
#| Z | 2 |

#文字列が入力されるので、これを Leet に変換して出力するプログラムを書いてください。
#期待する出力s を Leet に変換した文字列を１行に出力してください。最後は改行し、余計な文字、空行を含んではいけません。
#条件すべてのテストケースで以下の条件を満たします。・1 ≦ (s の長さ) ≦ 100・s はアルファベット大文字のみからなる
# 入力文字列を受け取る
s = gets.chomp

# sの長さと内容が条件を満たすかチェックする
if 1 <= s.length && s.length <= 100 && s.match?(/^[A-Z]+$/)
  # Leetの置き換え規則を定義
  leet_rules = {
    'A' => '4',
    'E' => '3',
    'G' => '6',
    'I' => '1',
    'O' => '0',
    'S' => '5',
    'Z' => '2'
  }

  converted_string = ""

  # sの各文字に対して置き換え規則を適用し、変換後の文字列を作成する
  s.each_char do |char|
    if leet_rules.has_key?(char.upcase)
      converted_string += leet_rules[char.upcase]
    else
      converted_string += char
    end
  end

  # 変換後の文字列を出力する
  puts converted_string
else
  puts "no"
end
