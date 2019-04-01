N, A, B = gets.chomp.split(" ").map(&:to_i)

output = 0

(1..N).each { |n| output += n if n.to_s.chars.map(&:to_i).inject(:+).between?(A, B) }

puts output

