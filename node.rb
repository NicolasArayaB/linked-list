class Node < LinkedList
  attr_accessor :value, :next
  def initialize
    @value = nil
    @next = nil
  end
  
  def value(value)
    @value = value
    p @value
  end

  def next_node(pointer)
    @next = pointer
    p @next
  end
end
