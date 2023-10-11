# 自分の得意な言語で
# Let's チャレンジ！！
S =[]
10.times do

  input = gets.chomp

  # 入力された文字列が条件を満たす場合は配列sに追加する
  if input.length >= 1 && input.length <= 10 && input.match?(/^[a-z]+$/)
    S<< input
  else
    puts "no"
    exit
  end
end
puts S.join(" ")