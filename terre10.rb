# nombre premier

def verifyIfNumberFirst (number)
    x = number.to_i
    if x < 0
        puts "Can't be inferior to 0"
    elsif x < 3 
        puts " #{x} n'est pas un nombre premier"
    else
        i = 3
        while i < Math.sqrt(x)
            if x % i == 0
                puts " #{x} n'est pas un nombre premier"
                break
            else 
                puts " #{x} est un nombre premier"
                i += 1
            end
        end
    end
end

def verifyArgument (element)
    if element != nil       
        if element.scan(/^\-?\d+$/).any?
            verifyIfNumberFirst(element)
        else            
            puts "Caractère autre qu'un chiffre"
        end
    else
        puts 'missing argument'
    end
end


verifyArgument(ARGV[0])

# x = Math.sqrt(9)
# puts x

# x = ''
# puts x.empty?