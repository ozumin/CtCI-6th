require 'minitest/autorun'
require './lib/2_1'

class Node
  attr_accessor :value
  attr_accessor :next
end

class UniqueTest < Minitest::Test
    def test_unique
        assert_equal true, unique('abcdefg')
        assert_equal false, unique('apple')
    end
end
