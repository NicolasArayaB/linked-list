class Node
  attr_accessor :value, :next
  
  def initialize
    @value = nil
    @next = nil
  end

  def value(value)
    @value = value
  end

  def r_value
    @value
  end

  def next_node(pointer)
    @next = pointer
  end

  def next
    @next
  end
end
