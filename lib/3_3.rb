require_relative './linked_list.rb'

class Stack < LinkedList
  attr_accessor :stacknext, :stackbefore, :first, :post
  attr_reader :size

  def initialize(value)
    @first = @last = Node.new value, nil, nil
    @stacknext = nil
    @stackbefore = nil
    @size = 1
  end

  def pop
    @return = @last.value
    if @last == @first
      @first.value = nil
    else
      @last.before.post = nil
      @last = @last.before
    end
    @size -= 1
    return @return
  end

  def push(item)
    if @first.value == nil
      @first = @last = Node.new item, nil, nil
      @stacknext = nil
      @stackbefore = nil
      @size = 1
    else
      self.gain(item)
      @size += 1
    end
    self
  end

  def peek
    @last.value
  end

  def isEmpty
    @first.value == nil
  end
  
end

class Stacks

  def initialize(value)
    @capacity = 2
    @firststack = @laststack = Stack.new(value)
  end

  def peek
    unless @laststack != nil
      return nil
    end
    @laststack.peek
  end

  def pop
    ans = @laststack.pop
    unless @laststack.isEmpty == false
      @laststack = @laststack.stackbefore
    end 
    return ans
  end

  def push(value)
    if @laststack.size == @capacity
      @new = Stack.new(value)
      @new.stackbefore = @laststack
      @laststack.stacknext = @new
      @laststack = @new
    else
      @laststack.push(value)
    end
    self
  end

  def popAt(num)
    i = 1
    @wanted = @firststack
    while i < num
      @wanted = @wanted.stacknext
      i += 1
    end
    ans = @wanted.pop

    while @wanted != @laststack
      new = @wanted.stacknext.first
      @wanted.stacknext.first = @wanted.stacknext.first.post
      @wanted.push(new)
      @wanted = @wanted.stacknext
    end
    return ans
  end
end
