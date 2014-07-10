# Tree has to be created from JSON-like hash
# {"grandpa" => { "dad" => {"child 1" => {}, "child 2" => {} }, "uncle" => {"child 3" => {}, "child 4" => {} } } }

class Tree
  attr_accessor :children, :node_name

  def initialize(ancestry = {})
    @node_name = ancestry.first[0]
    @children = []
    ancestry[@node_name].each do |child, descendants|
      @children << Tree.new({child => descendants})
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ancestry = {"grandpa" => { "dad" => {"child 1" => {}, "child 2" => {} }, "uncle" => {"child 3" => {}, "child 4" => {} } } }
ruby_tree = Tree.new(ancestry)
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}