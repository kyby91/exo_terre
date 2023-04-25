#Taille d'une chaîne

def counting (element)
    i=0
    k=0
    countArg=0
    countChar = 0

    while k
        if element[k] != nil
            countArg += 1
            k += 1
        elsif k>2
            puts 'error' #trop d'argument
            break
        else
            if k>0
                break # 2>argument & argument=1
            else
                puts 'error' #0 argument
                break
            end
        end
    end
    
    sentence = element.join(' ')   

    if k==1
        while i
            if sentence[i] == nil
                break
            else
                countChar += 1
                i += 1
            end
        end
        
        if sentence.to_i >0
            puts 'error' #que des chiffres ou commence par des chiffres
        else
            puts countChar
        end
    end
end

counting(ARGV)