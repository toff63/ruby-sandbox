# avoid overriding variables outside scope
# shoud never happen using clean code, but ...

square = "square"
sum = 0
[1, 2, 3, 4, 5].each do |value; square|
        square = value * value
        sum += square
end
puts sum
puts square
puts

# Function receiving block
def three_times
        yield
        yield
        yield
end

three_times {puts "Hello"}

# Function receiving block and an arg

def fib(max) 
        f1, f2 = 1, 1
        while f1 <= max
                yield f1
                f1, f2 = f2, f1+f2
        end
end
fib(1000) {|f| print f, " "}

def filter(array)
        result = []
        array.each do |element|
                result.push(element) if yield(element)
        end
        return result
end
puts
puts filter([1, 2, 3, 4, 5, 6]){|element| element * element >= 15 }
puts

# map:
puts ["A", "B", "C"].collect{ |letter| letter.downcase}
puts

#iterate with index
["A", "B", "C"].each_with_index do |letter, index|
        puts "#{index}: #{letter}"
end

# reduce
puts [1, 2, 3, 4, 5].inject(0){|sum, element| sum+element}
# same as (init value is the first element of the array :s)
puts [1, 2, 3, 4, 5].inject(:+)

