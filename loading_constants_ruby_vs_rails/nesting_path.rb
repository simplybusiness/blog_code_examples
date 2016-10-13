# File: nesting_path.rb
#
puts "Module.nesting at root level: #{Module.nesting}"

module MyModule
  puts "Module.nesting at MyModule level: #{Module.nesting}"
  MyConstant = 'Outer Constant'

  module MyModule
    puts "Module.nesting at MyModule::MyModule level: #{Module.nesting}"
    MyConstant = 'Inner Constant'
  end
end
