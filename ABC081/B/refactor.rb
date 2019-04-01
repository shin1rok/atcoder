n       = gets.to_i
numbers = gets.split(" ").map(&:to_i)

output = 0

while numbers.all?(&:even?)
  numbers = numbers.map { |n| n / 2 }
  counter += 1
end

puts output
