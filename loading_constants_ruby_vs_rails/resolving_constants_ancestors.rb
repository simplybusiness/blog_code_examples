# File: resolving_constants_ancestors.rb
#
module MyAncestor
  B = 1

  puts "MyAncestor defines B? #{MyAncestor.const_defined?(:B)}"
end

MyAncestor::B

module MyModuleA
  module MyModuleB
    puts "MyModuleA::MyModuleB.nesting is #{Module.nesting}"

    # next 2 return false, because we have not included MyAncestor yet
    puts "(before including MyAncestor) MyModuleA::MyModuleB defines B? #{MyModuleA::MyModuleB.const_defined?(:B)}"
    puts "(before including MyAncestor) MyModuleA::MyModuleB.constants includes B? #{MyModuleA::MyModuleB.constants.include?(:B)}"

    include MyAncestor

    puts "MyModuleA::MyModuleB Ancestors: #{MyModuleA::MyModuleB.ancestors}"

    # next 2 return true, because, now we have included MyAncestor
    puts "(after including MyAncestor) MyModuleA::MyModuleB defines B? #{MyModuleA::MyModuleB.const_defined?(:B)}"
    puts "(after including MyAncestor) MyModuleA::MyModuleB.constants includes B? #{MyModuleA::MyModuleB.constants.include?(:B)}"

    B # This is a relative constant reference.

    # It is not found inside any of [MyModuleA::MyModuleB, MyModuleA]
    # Then it is looked in the ancestors of the first item in nesting, i.e. in the ancestors of "MyModuleA::MyModuleB"
    # Hence, the constant found is MyAncestor::B and MyModuleA::MyModule::B. The same constant exist once, but
    # it has been added in 2 different constants arrays: 1) MyAncestor.constants and 2) MyModuleA::MyModule::B.constants
  end
end

MyAncestor::B # returns 1
MyModuleA::MyModuleB::B # returns 1

# Including the Ancestor adds the B to the current nesting point. But, both MyAncestor.constants[:B] and MyModuleA::MyModuleB.constants[:B]
# actually point to the same constant.
MyModuleA::MyModuleB::B.object_id == MyAncestor::B.object_id # returns true

MyAncestor::B = 2
puts "Is MyModuleA::MyModuleB::B still equal to MyAncestor::B? #{MyModuleA::MyModuleB::B == MyAncestor::B}"

# So, basically, the :B can now be accessed with 2 names: MyAncestor::B and MyModuleA::MyModule::B


