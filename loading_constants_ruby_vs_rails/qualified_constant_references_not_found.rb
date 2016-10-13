# File: qualified_constant_references_not_found.rb
#
B = 1

module MyAncestor
end

module MyModuleA
  module MyModuleB
    include MyAncestor

    module MyModuleC
      puts MyModuleB::B
    end
  end
end
