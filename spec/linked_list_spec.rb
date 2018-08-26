require_relative '../lib/linked_list.rb'

describe LinkedList do
  let(:list) {LinkedList.new 1}

  describe '#initialize' do
    it 'sets up initial linked list' do
      expect(list.first.value).to eq 1
    end
    it 'initial list next is nil' do
      expect(list.first.next).to eq nil
    end
    it 'initial list before is nil' do
      expect(list.first.before).to eq nil
    end
  end

  describe '#gain' do
    before do
      @last = list.last
      list.gain 5
    end

    it 'adds node with value' do
      expect(list.last.value).to eq 5
    end
    it 'adds node with next nil' do
      expect(list.last.next).to eq nil
    end
    it 'adds node with before -> last' do
      expect(list.last.before).to eq @last
    end
    it 'change current last node next' do
      expect(@last.next).to eq list.last
    end
  end
end
