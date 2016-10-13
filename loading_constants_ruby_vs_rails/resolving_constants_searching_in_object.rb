# File: resolving_constants_searching_in_object.rb
#
B = 2

module MyAncestor
  B = 1
end

module MyAncestorB
end

module MyModuleA
  include MyAncestor
  puts "Module nesting of MyModuleA: #{Module.nesting}"
  puts "Ancestors of MyModuleA: #{MyModuleA.ancestors}"

  module MyModuleB
    include MyAncestorB
    puts "Module nesting inside MyModuleA::MyModuleB is: #{Module.nesting}"
    puts "Ancestors of MyModuleA::MyModuleB: #{MyModuleA::MyModuleB.ancestors}"

    puts "Referencing B inside MyModuleA::MyModuleB: #{B} (resolves to the Object constant :B)"
    puts "B.object_id == ::B.object_id : #{B.object_id == ::B.object_id}"
  end
end

puts "Root level B is: #{B}"
puts "MyAncestor::B is: #{MyAncestor::B}"
puts "MyModuleA::B is: #{MyModuleA::B}"
