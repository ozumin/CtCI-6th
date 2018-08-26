require 'minitest/autorun'
require './lib/1_2'

class UniqueTest < Minitest::Test
    def test_permutation
        assert_equal true, permutation('surfer', 'resfur')
        assert_equal false, permutation('apple', 'banana')
    end
end
