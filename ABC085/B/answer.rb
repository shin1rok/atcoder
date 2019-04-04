N = gets.to_i
a = []
N.times do
  a << gets.to_i
end

puts a.uniq.size
