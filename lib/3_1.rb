class MultiStack
  
  def initialize(num, value)
    @capacity, @stack_numbers = 30, 3
    @first = (0..@stack_numbers - 1).to_a.map {|f| f * @capacity / @stack_numbers}
    @size = [0] * @stack_numbers
    @array = []
    
    @size[num - 1] = 1
    @array[(num - 1) * @capacity / @stack_numbers] = value 
  end

  def peek(num)
    @array[@first[num - 1] + @size[num - 1] - 1]
  end

  def push(num, value)
    unless @size[num - 1] == (@capacity / @stack_numbers)
      @array[@first[num - 1] + @size[num - 1]] = value
      @size[num - 1] += 1
    end
    self
  end

  def pop(num)
    unless @size[num - 1] == 0
      return @array[@first[num - 1] + @size[num - 1] - 1]
      @array[@first[num - 1] + @size[num - 1] - 1] = nil
      @size[num - 1] -= 1
    end
  end

  def isEmpty(num)
    @size[num - 1] == 0
  end
end
