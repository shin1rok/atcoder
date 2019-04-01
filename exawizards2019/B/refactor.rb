gets
a = gets.chomp.split.map(&:to_i)

alice = 0
bob   = 0

a.size.times do |n|
  if n.even?
    alice += a.max
  else
    bob += a.max
  end
  a.delete_at(a.find_index(a.max))
end

puts alice - bob

# 大きい順に並べ替えて順番に入れていく
