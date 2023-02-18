# frozen_string_literal: true

require_relative '../../lib/#006/farm'
require 'test/unit'

class Test006Challenge < Test::Unit::TestCase
  def test_should_create_cat_with_name
    cat = Cat.new('Fifik')
    assert_equal('Fifik', cat.name)
    assert_equal('Miiiaaaauuu', cat.give_voice)
    assert_equal(0, cat.age)
  end

  def test_should_create_dog_with_name
    dog = Dog.new('Mors', 10)
    assert_equal('Mors', dog.name)
    assert_equal('Woof', dog.give_voice)
    assert_equal(10, dog.age)
  end
end
