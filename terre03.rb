#alphabet from ARGV
def result (element)
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    variable =""
    for letter in alphabet do
        if alphabet.index(letter) >= alphabet.index(element)
            variable = variable + letter           
        end
    end
    puts variable
    puts''
end

result(ARGV[0])
