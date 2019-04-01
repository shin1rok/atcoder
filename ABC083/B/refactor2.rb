N, A, B = gets.chomp.split(" ").map(&:to_i)

output = 0

(1..N).each do |i|
  sum = 0
  n = i
  while n > 0
    sum += n % 10
    n   = n / 10
  end
  output += i if sum.between?(A, B)
end

puts output
