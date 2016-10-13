# File: qualified_constant_references_found_in_parent.rb
#
module MyModuleA
  module MyModuleB
    B = 1
    module MyModuleC
      puts MyModuleB::B
    end
  end
end
