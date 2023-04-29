#12 to 24

def transformTime(element)
    hour = element.split(/:/)
    newHour = hour[0].to_i
    if newHour > 12
        puts 'error'
    else
        if element.gsub(/[^a-zA-Z]/, '') == 'AM'
            newTime = "#{hour[0]}:#{hour[1]}"
            puts newTime
        elsif element.gsub(/[^a-zA-Z]/, '') == 'PM'
            newTime = "#{hour[0]}:#{hour[1]}"
            puts newTime
        else
            puts 'error'
        end
    end


end

def verifyArgument(element)
    if element == nil
        puts "Please enter a time"
    else
        if element.scan(/^\d+\:?\d+[a-zA-Z]{2}$/).any? #bon format
            transformTime(element)
        else 
            puts "error"
        end
    end
end

verifyArgument(ARGV[0])