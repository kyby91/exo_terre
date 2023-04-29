#24 to 12

def transformTime(element)
    x = element.split(/:/)
    newHour = x[0].to_i - 12
    newTime = "#{newHour}:#{x[1]}PM"
    puts newTime
end

def verifyArgument(element)
    if element == nil
        puts "Please enter a valid time"
    else
        if element.scan(/^\d+\:?\d*$/).any? #bon format
            transformTime(element)
        else 
            puts "error"
        end
    end
end

# transformTime(ARGV[0])
verifyArgument(ARGV[0])