gets
a = gets.chomp.split.map(&:to_i).sort.reverse

alice = 0
bob   = 0


a.each_with_index do |e, i|
  if i.even?
    alice += e
  else
    bob += e
  end
end

puts alice - bob
