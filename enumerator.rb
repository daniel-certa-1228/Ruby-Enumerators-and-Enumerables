enum = ['apple', 'bear', 'cactus'].each
puts enum #<Enumerator:0x00007fb96686b768>
puts enum.size #3
puts enum.next#apple
puts enum.next#bear
puts enum.peek#cactus peek looks at the next one but doesn't move the counter
puts enum.next#cactus
enum.rewind
puts enum.next

puts "#{enum.next_values}"#["bear"]
enum.each_with_index { |num, i| puts "#{i}. #{num}"}
# 0. apple
# 1. bear
# 2. cactus
enum.with_index(1) { |num, i| puts "Offset #{i}. #{num}"}
# Offset 1. apple
# Offset 2. bear
# Offset 3. cactus
