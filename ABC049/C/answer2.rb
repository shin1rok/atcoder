S = gets.chomp.reverse!

size = S.size

while true do
  S.gsub!(/(maerd|remaerd|esare|resare)/, "")
  (size == S.size) ? break : size = S.size
end

puts S.empty? ? "YES" : "NO"

