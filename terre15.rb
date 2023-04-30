#Allo la terre

def terre(element)
    if element.length >0
        result = ""
        for word in element
            result = result + word + " "
        end
        puts "J'ai terminé l'épreuve de la Terre et c'était #{result}" #motivant
    else
        puts "J'ai terminé l'épreuve de la Terre et c'était motivant"
    end
end

terre(ARGV)