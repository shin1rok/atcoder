array = gets.chomp.split.map(&:to_i)
puts (array.all? { |n| n == array[0] }) ? "Yes" : "No"
