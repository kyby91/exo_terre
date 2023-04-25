#Inverse

def reverse (element)
    if element.length == 0
        puts 'error'
    else
        sentence = element.join(' ')
        i = sentence.length - 1
        y = 0
        newArray = []
        while i >= 0
            newArray[y] = sentence[i]
            i -= 1
            y += 1
        end
        newSentence = newArray.join('')
        puts newSentence
    end
end
reverse(ARGV)