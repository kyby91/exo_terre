#Suisse


def findMiddleBro(element)
    x = nil
    if element[0] == element[1] || element[1] == element[2] || element[2] == element[0]
        puts 'error'
    else
        if element[0] < element[1]
            if element[1] < element[2]
                x = element[1]
            else
                if element[0] < element[2]
                    x = element[2]
                else
                    x = element[0]
                end
            end
        else 
            if element[0] < element[2]
                x = element[0]
            else 
                if element[1] < element[2]
                    x = element[2]
                else
                    x = element[1]
                end
            end
        end
    end
end


puts findMiddleBro(ARGV)