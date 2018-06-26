def lottery_match(my_ticket, winning_ticket)
    unless my_ticket.is_a?(String) && winning_ticket.is_a?(String)
        return "No valid ticket!"
    end
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
