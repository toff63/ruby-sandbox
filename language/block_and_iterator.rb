def my_block
  yield
end

my_block  { puts "Hello"}

def greet(who)
  yield who
end

greet('bob'){|who| puts "Hi #{who}"}

animals = %w( ant bee cat dog elk)
animals.each {|animal| puts animal}
