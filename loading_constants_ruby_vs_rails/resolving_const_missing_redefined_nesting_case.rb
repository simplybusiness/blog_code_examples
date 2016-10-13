# File: resolving_const_missing_redefined_nesting_case.rb
#
module MyAncestor
  B = 1
end

module MyAncestorB
end

module MyModuleA
  include MyAncestor

  module MyModuleB
    include MyAncestorB

    def self.const_missing(const_name)
      puts "Oooooooops! #{const_name} is missing!"
    end

    B
  end
end
