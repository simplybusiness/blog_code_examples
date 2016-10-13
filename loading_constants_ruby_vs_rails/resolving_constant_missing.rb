# File: resolving_constant_missing.rb
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

    B
  end
end
