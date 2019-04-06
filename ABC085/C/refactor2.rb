N, Y = gets.split.map(&:to_i)

# 10000円札の枚数でループする
# (0..Y / 10000)これだとNの枚数が極端に少ない場合に無駄にループしてしまう
# 無駄なループをしないために[N, Y / 10000].minにする
(0..[N, Y / 10000].min).each do |a|
  n = N - a # n = b + c
  m = Y - 10000 * a # m = 5000b + 1000c
  # cの値はc = N - a - bで求められるのでcが消えるように式を解く
  # m / 1000 - n = 4b
  # このときbはマイナスにはならない
  next if (s = m / 1000 - n) < 0
  # s = 4bなので、sは4で割り切れる(割り切れない場合、cが少数を含む値になる)
  b, r = s.divmod(4)
  if r == 0 && (c = N - a - b) >= 0
    puts [a, b, c] * " "
    exit
  end
end

puts '-1 -1 -1'

# https://ikatakos.com/pot/programming_algorithm/contest_history/atcoder/2018/0107_abc085
