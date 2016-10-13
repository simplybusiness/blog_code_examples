# File: class_definition.rb
#
puts "Is MyClass included in Object constants? #{Object.constants.include?(:MyClass)}"

class MyClass
end

puts "Is MyClass included in Object constants? #{Object.constants.include?(:MyClass)}"
