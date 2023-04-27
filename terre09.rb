#racine carré

def calculRacine(nombre)
    result = nombre ** 0.5
    puts result
end

def verifyArg (nombre)
    if  nombre != nil #vérifier si arg présent
        if nombre.scan(/^\d+$/).any? #vérifier si uniquement chiffre / chiffre entier / chiffre positif
            x = nombre.to_i
            calculRacine(x)
        else            
            puts "Caractère autre qu'un chiffre"
        end
    else
        puts 'Il manque un ou plusieurs arguments'
    end
end

verifyArg(ARGV[0])