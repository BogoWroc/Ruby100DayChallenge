# frozen_string_literal: true

##
# Animal class represents an animal at the farm.
class Animal
  attr_reader :name
  attr_accessor :age

  def initialize(name, age = 0)
    @name = name
    @age = age
  end
end

##
# Cat
class Cat < Animal
  def give_voice
    'Miiiaaaauuu'
  end
end

##
# Dog
class Dog < Animal
  def give_voice
    'Woof'
  end
end

if __FILE__ == $PROGRAM_NAME
  animals = [Cat.new('Mietek'), Dog.new('Fifik')]
  animals.each { |e| puts "#{e.name} said '#{e.give_voice}'" }

  dog = Dog.new('Mors')
  puts dog.age
  dog.age = 5
  puts dog.age
end
