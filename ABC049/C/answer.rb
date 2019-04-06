S = gets.chomp

size = S.size

while true do
  S.gsub!(/(dream|dreamer|erase|eraser)$/, "")
  (size == S.size) ? break : size = S.size
end

puts S.empty? ? "YES" : "NO"

# TLE
