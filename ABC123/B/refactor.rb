a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i

A = [a, b, c, d, e]

# 1桁目を切り上げして合計→合計から1桁目が一番大きい値をマイナスする
p A.map { |a| (a + 9) / 10 * 10 }.inject(:+) - A.map { |a| (a + 9) / 10 * 10 - a }.max
