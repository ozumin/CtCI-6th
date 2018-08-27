require_relative '../lib/3_1.rb'

describe MultiStack do
  let(:array) {MultiStack.new(1,1)}
  
  describe '#peek' do
    it 'peek first stack' do
      expect(array.peek 1).to eq 1
    end
  end
  
  describe '#push' do
    it 'push 2 in second stack' do
      expect(array.push(2,2).peek(2)).to eq 2
    end
  end

  describe '#pop' do
    it 'pop 1 from first stack' do
      expect(array.pop(1)).to eq 1
    end
  end

  describe '#isEmpty' do
    it 'third stack is empty' do
      expect(array.isEmpty(3)).to eq true
    end
    it 'second stack is not empty' do
      expect(array.isEmpty(1)).to eq false
    end
  end

end
