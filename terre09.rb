#racine carré

def calculRacine(nombre)
    if nombre < 0
        puts 'inférieure à 0'
    else
        result = nombre ** 0.5
        puts result
    end
end

def verifyArg (nombre)
    if  nombre != nil #vérifier si arg présent
        if nombre.scan(/^\-?\d+$/).any? #vérifier si uniquement chiffre / chiffre entier / chiffre positif
            x = nombre.to_i
            calculRacine(x)
        else            
            puts "Caractère autre qu'un chiffre"
        end
    else
        puts 'Il manque un argument'
    end
end

verifyArg(ARGV[0])