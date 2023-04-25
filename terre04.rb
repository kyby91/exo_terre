#pair ou impair

def modulo (element)
    if element.to_i == 0
        puts 'Tu ne me la mettras pas à l’envers.'
    else 
        calcul = element%2
        if calcul == 0
            puts 'pair'
        elsif calcul == 1
            puts 'impair'
        end
    end
end

modulo(ARGV[0].to_i)
