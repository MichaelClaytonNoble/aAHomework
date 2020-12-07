class GraphNode

  attr_accessor :val, :neighbors

  def initialize(val)
    @val = val 
    @neighbors = []
  end

  def self.bfs(starting_node, target_value)

    return starting_node if starting_node.val == target_value
      
    starting_node.neighbors.each do |neibor|

      result = bfs(neibor, target_value)
      return result if result.val == target_value unless result == nil
    end
    nil

  end

  def inspect
    p val
  end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a

p GraphNode.bfs(a,"f")