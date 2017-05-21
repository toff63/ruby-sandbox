# Iterator are embedded in collections. It makes them easy to iterate on but complicate things when you want to pass their iterators to another object. For this there are enumerators since 1.9

a = [1,2,3,4].to_enum

a.next # 1
a.next # 2
a.next # 3
a.next # 4
# a.next # Exception

# using enumertors

a = [1,2,3,4].to_enum
loop do
  puts a.next
end
  
enum_in_threes = (1..10).enum_for(:each_slice, 3)
enum_in_threes.to_a # [[1,2,3], [4,5,6], [7,8,9], [10]]

# Enumerator

fib_numbers = Enumerator.new do |yielder|
  a = 0
  yielder.yield a
  b = 1
  yielder.yield b
  loop do 
    c = b+a
    a = b
    b = c
    yielder.yield b
  end
end

15.times {puts fib_numbers.next} # shows the 15 first number of fibonnacci serie
# enumerator is an enumerable
p fib_numbers.first(15)
# however, becareful as enumerable method are eager and will try to consume every numbers.
# you can use a custom select to avoid this

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      if block.call(value) then yielder.yield value else break end
    end
  end
end
p infinite_select(fib_numbers) { |value| value < 1000 }.count
