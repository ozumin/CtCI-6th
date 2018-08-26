require_relative '../lib/queue.rb'

describe QueueMade do
  let(:queue) {QueueMade.new 1}

  describe '#peek' do
    it 'top value of queue' do
      expect(queue.peek).to eq 1
    end
  end

  describe '#remove' do
    it 'remove 1 from queue' do
      expect(queue.remove).to eq 1
    end
  end

  describe '#add' do
    it 'add 2 to queue' do
      @added = queue.add(2)
      @added.remove
      expect(@added.peek).to eq 2
    end
  end

  describe '#isEmpty' do
    it 'queue is empty' do
      @empty = queue
      @empty.remove
      expect(@empty.isEmpty).to eq true
    end
  end
end
