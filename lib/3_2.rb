class StackMin
  
  class Node
    attr_accessor :value, :post, :before, :min

    def initialize(value, post, before, min)
      @value = value
      @post = post
      @before = before
      @min = min
    end
  end

  attr_reader :first, :last
  
  def initialize(value)
    @first = @last = Node.new value, nil, nil, value
  end
  
  def pop
    @return = @last.value
    if @last == @first
      @first.value = nil
    else
      @last.before.post = nil
      @last = @last.before
    end
    return @return
  end
  
  def push(item)
    if @first.value == nil
      @first = @last = Node.new item, nil, nil, item
    else
      if item < @last.min
        @last.post = Node.new item, nil, @last, item
      else
        @last.post = Node.new item, nil, @last, @last.min
      end
      @last = @last.post
    end
    self
  end
  
  def peek
    @last.value
  end

  def isEmpty
    @first.value == nil
  end
  
  def min
    @last.min
  end

  private :first, :last
end
