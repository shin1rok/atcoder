S = gets.chomp.split("")

tmp1 = []
tmp2 = []

S.size.times do |i|
  tmp1 << (i.even? ? "0" : "1")
end

S.size.times do |i|
  tmp2 << (i.odd? ? "0" : "1")
end

count1 = 0
S.size.times do |i|
  unless S[i] == tmp1[i]
    count1 += 1
  end
end

count2 = 0
S.size.times do |i|
  unless S[i] == tmp2[i]
    count2 += 1
  end
end

# p S
# p tmp1
# p tmp2
# p count1
# p count2
p [count1,count2].min
