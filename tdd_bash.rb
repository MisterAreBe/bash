def lottery_match(my_ticket, winning_ticket)
    my_ticket = my_ticket.split('')
    winning_ticket = winning_ticket.split('')
    matching_numers = 0
    winning_ticket.each_with_index do |num, index|
        if num == my_ticket[index]
            matching_numers += 1
        end
    end
    matching_numers
end