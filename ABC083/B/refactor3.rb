N, A, B = gets.chomp.split.map(&:to_i)

output = 0

(1..N).each do |i|
  data = i / 10000 + i % 10000 / 1000 + i % 1000 / 100 + i % 100 / 10 + i % 10
  output += i if data.between?(A, B)
end

puts output
