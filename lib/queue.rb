require_relative './linked_list.rb'

class QueueMade < LinkedList

  def remove
    @return = @first.value
    if @last == @first
      @first.value = nil
    else
      @first.post.before = nil
      @first = @first.post
    end
    return @return
  end

  def add(item)
    if @first.value == nil
      @first = @last = Node.new item, nil, nil
    else
      self.gain(item)
    end
    self
  end

  def peek
    @first.value
  end

  def isEmpty
    @first.value == nil
  end
  
  private :last, :first
end
