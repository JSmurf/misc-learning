numbers = [9,16,22,95,12,23,10,8,93,8,11,16,2,14,12,17]

numbers.each_with_index do |num, i|
    i += 1
    p numbers[((i-4)...i)] if (i % 4 == 0 and i != 0)
end

puts "Again!" 

numbers.each_slice(4) do |slice|
     p slice
end
