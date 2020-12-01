class Node
  attr_accessor :value, :next
  
  def initialize
    @value = nil
    @next = nil
  end

  def value(value)
    @value = value
  end

  def p_value
    p @value
  end

  def next_node(pointer)
    @next = pointer
  end
end
