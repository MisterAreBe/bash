def lottery_match(my_ticket, winning_ticket)
    my_ticket = my_ticket.split('')
    winning_ticket = winning_ticket.split('')
    matching_numbers = 0
    winning_ticket.each_with_index do |num, index|
        unless num == my_ticket[index]
            matching_numbers += 1
        end
    end
    matching_numbers
end 

def check_ticket(bought_tickets, golden_ticket)
    checker = []
    bought_tickets.each do |num|
        checker << lottery_match(num, golden_ticket)
    end
    checker
end

def you_won(bought_tickets, golden_ticket)
    winarr = []
    golden_ticket.each do |num|
        matches = check_ticket(bought_tickets, num)
        winners = 0
        matches.each do |m|
            if m == 0
                winners += 1
            end
        end
        winarr << winners
    end
    winarr
end

def winner_who(bought_tickets, golden_ticket)
    [[1, 4, 3, 4], [2, 3, 4]]
end