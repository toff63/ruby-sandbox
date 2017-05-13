require 'bigdecimal'

# Arrays

a = [1, "Pie", 3.1, BigDecimal(2)]
puts "Array of everything: #{a}"
puts "Class: #{a.class}"
puts "Length: #{a.length}"
puts "There is no index out of bound: a[99] = #{a[99]}"

# indices
a = [0,1,2,3,4,5,6,7,8,9]
puts "a = #{a}"
puts "Class (no generic): #{a.class}"
puts "Length: #{a.length}"
puts "a[0] = #{a[0]} and a[-10] = #{a[-10]}"
puts "a[1] = #{a[1]} and a[-9] = #{a[-9]}"
puts "a[2] = #{a[2]} and a[-8] = #{a[-8]}"
puts "Range: a[0..2] = #{a[0..2]}"
puts "Range: a[0..-8] = #{a[0..-8]}"
a[0..3] = []
puts "Remove the 4 first indices: a[0..3] = [] (This is a nasty trick)"
puts "a = #{a}"
a[1..2] = 56
puts "Remove index in the middle and change the remaining value: a[1..2] = 56 (This is a nasty trick)"
puts "a = #{a}"

# Using array as stack or queue
a = []
a.push 0
a.push 1
a.push 2
a.push 3
puts "a = #{a}"
puts "Remove top of stack: a.pop = #{a.pop}"
puts "a = #{a}"
puts "Treat it as queue now: a.shift = #{a.shift}"
puts "a = #{a}"

# Hashes

hash = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
# with keys as symbols
hash = {:dog => 'canine', :cat => 'feline', :donkey => 'asinine'}
# same as
hash = {dog: 'canine', cat: 'feline', donkey: 'asinine'}


# Word frequency

def words_from_string(string)
        string.downcase.scan(/[\w']+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)")

def word_frequency(words)
        frequency = Hash.new(0)
        words.each{|word| frequency[word] += 1}
        frequency
end
p word_frequency(words_from_string("But I didn't inhale, he said (emphatically)"))

def sort_by_frequency(hash)
        hash.sort_by{|word, count| count}
end

