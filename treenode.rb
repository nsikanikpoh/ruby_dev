class TreeNode
  attr_accessor :val, :left, :right

  def initialize val, left = nil, right = nil
    @val = val
    @left = left
    @right = right
  end

   def to_s
     "#{left} #{val} #{right}".strip
  end

  def binary_tree_compare(a, b)
    # both empty 
  	return true if (a == nil) && (b == nil)
  
   # both non-empty compare
    if (a != nil) && (b != nil)
      return ((a.val == b.val) && 
                binary_tree_compare(a.left, b.left) &&
                binary_tree_compare(a.right, b.right))
    end
  
    #  one empty, one not return false 
    return false
  
 end


end