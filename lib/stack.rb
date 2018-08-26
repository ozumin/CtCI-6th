require_relative './linked_list.rb'

class Stack < LinkedList

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
      @first = @last = Node.new item, nil, nil
    else
      self.gain(item)
    end
    self
  end

  def peek
    @last.value
  end

  def isEmpty
    @first.value == nil
  end
  
  private :last, :first
end
