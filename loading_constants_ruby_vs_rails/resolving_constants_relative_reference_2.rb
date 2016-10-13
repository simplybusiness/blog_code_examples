# File: resolving_constants_relative_reference_2.rb
#
module MyModuleA
  puts "MyModuleA defines B? #{MyModuleA.const_defined?(:B)}"

  module MyModuleB
    puts "MyModuleA::MyModuleB nesting: #{Module.nesting}" # => [MyModuleA::MyModuleB, MyModuleA]

    B = 1

    puts B

    puts "MyModuleA::MyModuleB defines B? #{MyModuleA::MyModuleB.const_defined?(:B)}"
    puts "MyModuleA defines B? #{MyModuleA.const_defined?(:B)}"
  end
end

MyModuleA::MyModuleB::B
