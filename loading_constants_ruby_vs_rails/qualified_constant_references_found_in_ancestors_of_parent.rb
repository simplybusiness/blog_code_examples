# File: qualified_constant_references_found_in_ancestors_of_parent.rb
#
module MyAncestor
  B = 1
end

module MyModuleA
  module MyModuleB
    include MyAncestor

    module MyModuleC
      puts MyModuleB::B
    end
  end
end
