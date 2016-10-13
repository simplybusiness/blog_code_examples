# File: nesting.rb
#
module MyModule
  MyConstant = 'Outer Constant'

  module MyModule
    MyConstant = 'Inner Constant'
  end
end
puts "Is MyModule defined?: #{defined?(MyModule) || 'no'}"
puts "Is MyModule defined in Object?: #{Object.const_defined?(:MyModule)}"

puts "Is MyModule::MyConstant defined?: #{defined?(MyModule::MyConstant) || 'no'}"

puts "Is MyModule::MyModule defined?: #{defined?(MyModule::MyModule) || 'no'}"

puts "Is MyModule::MyModule::MyConstant defined?: #{defined?(MyModule::MyModule::MyConstant) || 'no'}"

puts "Is MyConstant defined in Object:: #{Object.const_defined?(:MyConstant)}"

MyModule
MyModule::MyConstant
MyModule::MyModule
MyModule::MyModule::MyConstant

puts "MyModule constants: #{MyModule.constants}"
puts "Is MyConstant defined in MyModule.constants?: #{MyModule.const_defined?(:MyConstant)} "
puts "Is MyModule defined in MyModule.constants?: #{MyModule.const_defined?(:MyModule)} "
puts "MyModule::MyModule constants: #{MyModule::MyModule.constants}"
puts "Is MyConstant defined in MyModule::MyModule constants: #{MyModule::MyModule.const_defined?(:MyConstant)}"
