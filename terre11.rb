#24 to 12

def transformTime(element)
    hour = element.split(/:/)
    newHour = hour[0].to_i
    if newHour > 24
        puts 'error'
    else
        if newHour > 12 
            newTime = "#{newHour - 12}:#{hour[1]}PM"
            puts newTime
        else
            newTime = "#{newHour}:#{hour[1]}AM"
            puts newTime
        end
    end


end

def verifyArgument(element)
    if element == nil
        puts "Please enter a time"
    else
        if element.scan(/^\d+\:?\d*$/).any? #bon format
            transformTime(element)
        else 
            puts "error"
        end
    end
end

verifyArgument(ARGV[0])