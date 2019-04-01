str   = gets.chomp
array = gets.chomp.split(" ").map(&:to_i)

def can_division_2?(array)
  array.size == array.reject { |n| n.odd? }.size
end

output = 0

while can_division_2?(array)
  output += 1
  array.map! { |n| n / 2 }
end

puts output


