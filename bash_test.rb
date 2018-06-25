require "minitest/autorun"
require_relative "tdd_bash.rb"

class TddBash < Minitest::Test

    def test_assert_equal_1_is_1
        assert_equal(1, 1)
    end

    
end
