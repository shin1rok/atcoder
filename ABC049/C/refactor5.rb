S = gets.chomp

S.gsub!('eraser', '')
S.gsub!('erase', '')
S.gsub!('dreamer', '')
S.gsub!('dream', '')

puts S.empty? ? 'YES' : 'NO'
