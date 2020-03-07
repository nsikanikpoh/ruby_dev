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




class Bst

    attr_reader :left, :right, :data

    def initialize(value_in)
        @data = value_in
    end

    def insert(value_in)
        if value_in <= data
            if left
                left.insert(value_in)
            else
                @left = Bst.new(value_in)
            end
        else
            if right
                right.insert(value_in)
            else
                @right = Bst.new(value_in)
            end
        end
    end

    def each(&block)
        return enum_for(:each) unless block_given?

        left.each(&block) if left
        yield data
        right.each(&block) if right
    end
end
