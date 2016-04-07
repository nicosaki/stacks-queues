class Queue
  attr_accessor :store
  def initialize
    @store = Array.new()
  end

  def dequeue
    @store.pop #returns removed element from mutation
  end

  def enqueue(element)
    @store.unshift(element)
  end

  def size
    @store.size
  end
end
