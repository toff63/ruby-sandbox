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
puts [1, 2, 3, 4, 5].inject(0){|sum2, element| sum2+element}
# same as (init value is the first element of the array :s)
puts [1, 2, 3, 4, 5].inject(:+)


# You can transform a block into an object by declaring it as &block in the argument list:

class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def execute(*parameters)
    @stored_proc.call(*parameters)
  end
end

proc = ProcExample.new
proc.pass_in_block{ |a,b| a+b}
puts "1+2 = #{proc.execute(1,2)}"

# lambda syntax to assign a proc to a variable
add = lambda {|a,b| a+b}
add2 = -> a,b {a+b}
mult = Proc.new {|a,b| a*b}
p add.call(1,2)
p add2.call(1,2)
p mult.call(1,2)
