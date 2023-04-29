# nombre premier

def verifyIfNumberFirst (number)
    x = number.to_i
    if x < 0
        puts "Can't be inferior to 0"
    elsif x < 3 
        puts "#{x} n'est pas un nombre premier"
    elsif x == 3
        puts "#{x} est un nombre premier"
    else
        i = 2
        result = ''
        while i <= Math.sqrt(x)
            if x % i == 0
                result = 'false'
                break
            else
                i += 1
                result = 'true'
            end
        end
        if result == 'false'
            puts "#{x} n'est pas un nombre premier"
        else
            puts "#{x} est un nombre premier"
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
