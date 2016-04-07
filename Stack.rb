class Stack
  attr_accessor :store
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop #returns removed element from mutation
  end

  def push(element)
    @store << element
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
