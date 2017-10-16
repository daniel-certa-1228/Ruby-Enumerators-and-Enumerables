array_words = ['pear', 'abcd','peach', 'pomegranate', 'petunia']
array_ints = [2,3,6,8,1]

map_array = array_words.map {|word| word.upcase + '!'}
puts map_array.inspect #["PEAR!", "PEACH!", "POMEGRANATE!", "PETUNIA!"]
puts array_words.inspect #["pear", "peach", "pomegranate", "petunia"]

find = array_ints.find { |i| i.even? }
puts find # 2
find_all = array_ints.find_all { |i| i.even?}
puts find_all.inspect # [2, 6, 8]

reject = array_ints.reject { |i| i.even?}
puts reject.inspect # [3, 1]

grep_array = array_words.grep(/ea/).map { |word| word.upcase}
puts grep_array.inspect # ["PEAR", "PEACH"]

puts array_ints.reduce { |sum, int| sum + int} #20

longest_word = array_words.reduce do |memo, word|
	memo.length > word.length ? memo:word
end
puts "longest word: #{longest_word}" #longest word: pomegranate

group_words = array_words.group_by { |word| word.length}
puts group_words #{4=>["pear", "abcd"], 5=>["peach"], 11=>["pomegranate"], 7=>["petunia"]}
group_ints = array_ints.group_by {|i| i%2}
puts group_ints #{0=>[2, 6, 8], 1=>[3, 1]}

words_ascend = array_words.sort
puts words_ascend.inspect #["abcd", "peach", "pear", "petunia", "pomegranate"]
words_desc = array_words.sort {|a,b| b <=> a }
puts words_desc.inspect #["pomegranate", "petunia", "pear", "peach", "abcd"]

words_length = array_words.sort_by {|word| word.length}
puts words_length.inspect #["pear", "abcd", "peach", "petunia", "pomegranate"]

all = array_words.all? {|word| word.length < 5}
puts all #false
any = array_words.any? {|word| word.length < 5}
puts any #true

include = array_ints.include? 1
puts include #true

array_ints.map! { |i| i + 2}
puts array_ints.inspect #[4, 5, 8, 10, 3]





