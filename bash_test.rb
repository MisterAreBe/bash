require "minitest/autorun"
require_relative "tdd_bash.rb"

class TddBash < Minitest::Test

    def test_lottery_returns_numbers
        assert_equal(Integer, lottery_match("", "").class)
    end

    def test_returns_4_for_no_match
        assert_equal(4, lottery_match("7894", "5612"))
    end

    def test_returns_3_for_1_match
        assert_equal(3, lottery_match("1234", "1567"))
    end

    def test_all_matching_returns_0
        assert_equal(0, lottery_match("1234", "1234"))
    end

    def test_check_ticket_class_array
        assert_equal(Array, check_ticket([], "").class)
    end

    def test_how_off_each_ticket_is
        assert_equal([4, 3, 2, 1], check_ticket(["1246", "3124", "3512", "3571"], "3570"))
    end

    def test_how_off_each_ticket_is_v2
        assert_equal([2, 3, 3, 1], check_ticket(["1146", "1234", "1256", "1119"], "1111"))
    end

    def test_how_many_winners
        assert_equal([1], you_won(["1234", "5678", "3570", "1647"], ["3570"]))
    end

    def test_how_many_winners_v2
        assert_equal([1, 2], you_won(["5421", "5773", "3570", "5421"], ["3570", "5421"]))
    end
    
    def test_winners_info
        assert_equal([[1, 4, 3, 4], [2, 3, 4]], winner_who(["5421", "5773", "3570", "5421"], ["3570", "5421"]))
    end
end
