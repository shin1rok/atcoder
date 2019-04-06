N, Y = gets.split.map(&:to_i)

res10000 = -1
res5000  = -1
res1000  = -1

(0..N).each do |a|
  (0..N - a).each do |b|
    c     = N - a - b
    total = (10000 * a) + (5000 * b) + (1000 * c)
    if total == Y
      res10000 = a
      res5000  = b
      res1000  = c
    end
  end
end

puts [res10000, res5000, res1000].join(' ')
