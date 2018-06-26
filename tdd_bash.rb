def lottery_match(my_ticket, winning_ticket)
    unless my_ticket.is_a?(String) && winning_ticket.is_a?(String)
        return "No valid ticket!"
    end
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

def check_ticket()
    []
end