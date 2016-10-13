# File: module_definition.rb
#
puts "Is MyModule included in Object constants? #{Object.constants.include?(:MyModule)}"

class MyModule
end

puts "Is MyModule included in Object constants? #{Object.constants.include?(:MyModule)}"
