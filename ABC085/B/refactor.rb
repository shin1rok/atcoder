N = gets.to_i
# a = N.times.collect { gets.to_i }
a = Array.new(N) { gets.to_i }
puts a.uniq.size
