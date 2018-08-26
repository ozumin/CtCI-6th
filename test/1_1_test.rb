require 'minitest/autorun'
require './lib/1_1'

class UniqueTest < Minitest::Test
    def test_unique
        assert_equal true, unique('abcdefg')
        assert_equal false, unique('apple')
    end
end
