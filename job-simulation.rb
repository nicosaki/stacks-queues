require './Stack.rb'
require './Queue.rb'

class BadEmployer
  attr_accessor :queue, :employees
  def initialize
    # candidates = (0..9).to_a
    @employees = Stack.new()
    (0..5).each do |number|
      @employees.push(number)
    end
    @queue = Queue.new()
    (6..10).each do |number|
      @queue.enqueue(number)
    end
  end

  def roll_dice
    dice_roll = (rand(5))+1
    dice_roll.times do
      employee_affected = @employees.pop
      @queue.enqueue(employee_affected)
    end
    dice_roll.times do
      @employees.push(@queue.dequeue)
    end
    puts "#{@queue.store} are waiting in line"
    puts "#{@employees.store} are employed"
  end
end
