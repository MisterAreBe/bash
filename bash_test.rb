require "minitest/autorun"
require_relative "tdd_bash.rb"

class TddBash < Minitest::Test

    def test_lottery_returns_numbers
        assert_equals(Integer, lottery_match("", "").class)
    end




end
