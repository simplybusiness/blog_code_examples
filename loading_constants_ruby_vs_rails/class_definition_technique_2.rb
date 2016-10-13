# File: class_definition_technique_2.rb
#
puts "Is MyClass included in Object constants? #{Object.constants.include?(:MyClass)}"

MyClass = Class.new

puts "Is MyClass included in Object constants? #{Object.constants.include?(:MyClass)}"
