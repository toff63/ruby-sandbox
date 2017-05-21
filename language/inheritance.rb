class Parent
  def say_hello
    puts 'Hi from parent'
  end
  def self.static_hello
    puts 'Static hello from parent'
  end
  def self.static_overriden
    puts 'Static to be overriden' 
  end
end

class Child < Parent
  def self.static_overriden
    puts 'Child implementation' 
  end
end

Parent.new.say_hello
Child.new.say_hello
Parent.static_hello
Child.static_hello
Child.static_overriden
