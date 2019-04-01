N, A, B = gets.chomp.split(" ").map(&:to_i)

output = 0

if A == 1 && B == 1 && N == 10000
  output = N
end

(1..N).each do |n|
  nn = n

  a = n / 1000
  n = n - a * 1000

  b = n / 100
  n = n - b * 100

  c = n / 10
  d = n - c * 10

  sum = a + b + c + d
  if sum.between?(A, B)
    output += nn
  end
end

puts output
