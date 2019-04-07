a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
k = gets.chomp.to_i

array = [a, b, c, d, e]

array.each do |x|
  array.each do |y|
    next if x >= y
    if y - x > k
      puts ':('
      exit
    end
  end
end
puts 'Yay!'

# typoもったいない
