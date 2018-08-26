require_relative '../lib/stack.rb'

describe Stack do
  let(:stack) {Stack.new 1}

  describe '#peek' do
    it 'top value of stack' do
      expect(stack.peek).to eq 1
    end
  end

  describe '#pop' do
    it 'stack pop is 1' do
      expect(stack.pop).to eq 1
    end
  end

  describe '#push' do
    it 'push stack' do
      expect(stack.push(2).peek).to eq 2
    end
  end

  describe '#isEmpty' do
    it 'stack is not empty' do
      expect(stack.isEmpty).to eq false
    end
    it 'stack is empty' do
      @empty = stack
      @empty.pop
      expect(@empty.isEmpty).to eq true
    end
  end
end
