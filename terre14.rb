#Trier or not trier
array = [1, 2, 3, 4, 5, 3]

def isTrier(element)
    x = element[0]
    i = 1

    while i <= element.length - 1 #comparer chaque arg par rapport au précédent
        if x <= element[i]
            if i == element.length - 1
                puts 'trier'
                break
            else
                x = element[i]
                i += 1
            end
        else
            puts 'not trier'
            break
        end
    end
end



def isGoodArg(element) #vérifier argument 1 par 1
    i = 0
    while i <= element.length - 1
        if ARGV[i].scan(/^[0-9]/).any?
            if i == element.length - 1
                isTrier(element)
                break
            else
                i += 1
            end
        else 
            puts 'Argument is not a number'
            break
        end
    end
end
puts isGoodArg(ARGV)