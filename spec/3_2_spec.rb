require_relative '../lib/3_2.rb'

describe StackMin do
  let(:stack) {StackMin.new(1).push(2).push(3)}

  describe '#pop' do
    it 'pop stack' do
      expect(stack.pop).to eq 3
    end
  end

  describe '#push' do
    it 'push stack' do
      expect(stack.push(4).pop).to eq 4
    end
  end

  describe '#min' do
    it 'return minimum value in stack' do
      expect(stack.min).to eq 1
    end
  end
end
