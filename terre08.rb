#Puissance d'un nombre

def calcul_puissance (nombre, exposant)
    if exposant < 0
        puts 'exposant inférieur à 0' #vérifier si exposant négatif
    else
        result = 1
        exposant.times do |i|
            result = result * nombre
        end
        puts result
    end
end


def verifyArg (nombre, exposant)
    if  nombre != nil and exposant!= nil #vérifier si arg présent
        if nombre.scan(/^\-?\d+\.?\d*$/).any? && exposant.scan(/^\-?\d+\.?\d*$/).any? #vérifier si lettre ou pas
            x = nombre.to_i
            y = exposant.to_i
            calcul_puissance(x,y)
        else            
            puts "Caractère autre qu'un chiffre"
        end
    else
        puts 'Il manque un ou plusieurs arguments'
    end
end

verifyArg(ARGV[0], ARGV[1])