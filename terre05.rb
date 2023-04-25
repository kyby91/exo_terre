#Division 

def div (number1, number2)
    if number2 == 0 || number2 > number1
        puts 'error'
    else
        résultat = number1 / number2
        reste = number1%number2
        puts résultat
        puts reste
    end
end

div(ARGV[0].to_i,ARGV[1].to_i)