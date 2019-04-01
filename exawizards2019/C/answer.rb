N, Q   = gets.chomp.split.map(&:to_i)
s      = gets.chomp
spells = []
Q.times do
  spells << gets.chomp.split
end
frame = []
N.times do |n|
  frame << [s[n], 1]
end

spells.each_with_index do |spell|
  tmp = Marshal.load(Marshal.dump(frame))
  indexes = []
  frame.each_with_index do |square, i|
    indexes << i if square[0] == (spell[0])
  end

  if spell[1] == "L"
    indexes.each do |n|
      frame[n][1] = 0
      if (n == 0 && spell[1] == "L") || (n == N - 1 && spell[1] == "R")
        tmp[n][1] = 0
      elsif spell[1] == "L"
        frame[n - 1][1] = tmp[n - 1][1] + tmp[n][1]
      elsif spell[1] == "R"
        frame[n + 1][1] = tmp[n + 1][1] + tmp[n][1]
      end
    end
  else
    indexes.reverse.each do |n|
      frame[n][1] = 0
      if (n == 0 && spell[1] == "L") || (n == N - 1 && spell[1] == "R")
        tmp[n][1] = 0
      elsif spell[1] == "L"
        frame[n - 1][1] = tmp[n - 1][1] + tmp[n][1]
      elsif spell[1] == "R"
        frame[n + 1][1] = tmp[n + 1][1] + tmp[n][1]
        if n == 1
        end
      end
    end
  end
end

sum = 0
frame.each { |n| sum += n[1] }
puts sum
