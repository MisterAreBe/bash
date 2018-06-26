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

    def test_all_matching_returns_4
        assert_equal(4, lottery_match("1234", "1234"))
    end

    def test_incorrect_input_returns_no_valid_ticket
        assert_equal("No valid ticket!", lottery_match(8520, "8520"))
    end

    def test_check_ticket_class_array
        assert_equal(Array, check_ticket([], "").class)
    end

    def test_how_many_numbers_your_ticket_is_off_by
        assert_equal([1, 2, 3, 4], check_ticket(["1246", "3124", "3512", "3571"], "3570"))
    end

end
