class LinkedList

  class Node
    attr_accessor :value, :post, :before
    alias_method :next, :post

    def initialize(value, post, before)
      @value = value
      @post = post
      @before = before
    end

  end

  attr_reader :first, :last

  def initialize(value)
    @first = @last = Node.new value, nil, nil
  end

  def gain(value)
    @last.post = Node.new value, nil, @last
    @last = @last.post
    self
  end
end
