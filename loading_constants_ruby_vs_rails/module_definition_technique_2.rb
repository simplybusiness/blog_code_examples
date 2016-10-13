# File: module_definition_technique_2.rb
#
puts "Is MyModule included in Object constants? #{Object.constants.include?(:MyModule)}"

MyModule = Module.new

puts "Is MyModule included in Object constants? #{Object.constants.include?(:MyModule)}"
