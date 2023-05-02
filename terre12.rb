#12 to 24

def transformTime(element)
    hour = element.split(/:/)
    newHour = hour[0].to_i
    if newHour > 12
        puts 'error'
    else
        if element.gsub(/[^a-zA-Z]/, '') == 'AM'
            if hour[0].to_i == 12
                newTime = "0#{hour[0].to_i - 12}:#{hour[1][0,2]}"
                puts newTime
            else
                newTime = "#{hour[0]}:#{hour[1][0,2]}"
                puts newTime
            end
        elsif element.gsub(/[^a-zA-Z]/, '') == 'PM'
            if hour[0].to_i == 12
                newTime = "#{hour[0].to_i}:#{hour[1][0,2]}"
                puts newTime
            else
                newTime = "#{hour[0].to_i + 12}:#{hour[1][0,2]}"
                puts newTime
            end
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