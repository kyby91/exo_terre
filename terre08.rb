#Puissance d'un nombre

def puissance (nombre, exposant)
    if  nombre != nil and exposant!= nil #vérifier si arg présent
        if nombre.count("a-zA-Z") > 0 || exposant.count("a-zA-Z") > 0 #vérifier si lettre ou pas
            puts 'error'
        else
            if exposant.to_i < 0 #vérifier si exposant négatif
                puts 'error'
            else #fonction puissance
                x = nombre.to_i
                y = exposant.to_i
                result = 1
                y.times do |i| 
                    result = result * x
                end
                puts result
            end
        end
    else
        puts 'Il manque un ou plusieurs arguments'
    end
end

puissance(ARGV[0], ARGV[1])
