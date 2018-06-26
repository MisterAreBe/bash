require "minitest/autorun"
require_relative "tdd_bash.rb"

class TddBash < Minitest::Test

    def test_lottery_returns_numbers
        assert_equal(Integer, lottery_match("", "").class)
    end

    def test_returns_0_for_no_match
        assert_equal(0, lottery_match("7894", "5612"))
    end

    def test_returns_1_for_1_match
        assert_equal(1, lottery_match("1234", "1567"))
    end

end
