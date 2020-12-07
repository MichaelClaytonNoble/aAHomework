require 'set'

class GraphNode

  attr_accessor :val, :neighbors

  def initialize(val)
    @@visited = Set.new
    @val = val 
    @neighbors = []
  end

  def self.bfs(starting_node, target_value)

    return starting_node if @@visited.include?(starting_node)
    return starting_node if starting_node.val == target_value
      @@visited << starting_node
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

p GraphNode.bfs(a,"e")