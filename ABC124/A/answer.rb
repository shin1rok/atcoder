A, B = gets.chomp.split.map(&:to_i)

if A == B
  puts A * 2
elsif A > B
  puts A * 2 -1
elsif B > A
  puts B * 2 -1
end
