N, Y = gets.split.map(&:to_i)

res10000  = -1
res5000   = -1
res1000   = -1
break_flg = false
(0..N).each do |a|
  (0..N - a).each do |b|
    c     = N - a - b
    total = (10000 * a) + (5000 * b) + (1000 * c)
    if total == Y
      res10000 = a
      res5000  = b
      res1000  = c
      break_flg = true
    end
    break if break_flg
  end
  break if break_flg
end

puts [res10000, res5000, res1000].join(' ')

# answerの実行時間294ms
# refactorの実行時間299ms
# breakする時の条件によっては比較の方が処理が重いっぽい？
