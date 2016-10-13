# File: resolving_constants_relative_reference_1.rb
#
module MyModuleA
  B = 1
  puts "MyModuleA defines B? #{MyModuleA.const_defined?(:B)}"

  module MyModuleB
    puts "MyModuleA::MyModuleB nesting: #{Module.nesting}" # => [MyModuleA::MyModuleB, MyModuleA]

    puts B

    puts "MyModuleA::MyModuleB defines B? #{MyModuleA::MyModuleB.const_defined?(:B)}"
    puts "MyModuleA defines B? #{MyModuleA.const_defined?(:B)}"
  end
end

MyModuleA::B
