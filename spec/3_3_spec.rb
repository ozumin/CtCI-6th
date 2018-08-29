require_relative '../lib/3_3.rb'

describe Stacks do
  let(:stacks1) {Stacks.new(1)}
  let(:stacks3) {Stacks.new(1).push(2).push(3)}

  describe '#peek' do
    it 'can peek the last value of the last stack' do
      expect(stacks1.peek).to eq 1
    end
  end
  
  describe '#pop' do
    context 'no change in last stack' do
      it 'can pop the last value of the last stack' do
        expect(stacks1.pop).to eq 1
      end
      it 'value cannot be seen after pop' do
        @pop = stacks1
        @pop.pop
        expect(@pop.peek).to eq nil
      end
    end
    context 'change in last stack' do
      it 'value after pop is the last value of the new last stack' do
        @pop = stacks3
        @pop.pop
        expect(@pop.peek).to eq 2
      end
    end
  end

  describe '#push' do
    context 'no change in last stack' do
      it 'can push 2 to stacks' do
        expect(stacks1.push(2).peek).to eq 2
      end
    end
    context 'change in last stack' do
      it 'can push 2 values' do
        expect(stacks1.push(2).push(3).peek).to eq 3
      end
    end
  end

  describe '#popAt' do
    it 'can pop from any stack' do
      expect(stacks3.popAt(1)).to eq 2
    end
  end
end
