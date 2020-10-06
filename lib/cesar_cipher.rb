def cesar_cipher(s, key_number)
    array_number = s.split("").map{|e| e.ord}  # On transforme nos lettre en code ASCII dans un tableau
    array_number_key_number = []

    array_number.length.times do |i|  # On lance une boucle de la taille de notre array
        if (array_number[i] == 32) || (array_number[i] == 33) then  # Si on tombe sur un espace ou "!"
            array_number_key_number[i] = array_number[i]  # On ne les change pas 
        else  # Sinon
            if (array_number[i] >= 97) && (array_number[i] <= 122) then  # Si on se trouve entre 97 et 122, on est sur une minuscule
                array_number_key_number[i] = array_number[i] + key_number  # On ajoute key_number = le nombre de décalage à faire en ASCII
                if array_number_key_number[i] > 122 then   #  Si on dépasse 122(='z')
                    array_number_key_number[i] = array_number_key_number[i] - 26  # on recompte à partir de a
                end
            elsif (array_number[i] >= 65) && (array_number[i] <= 90) then  # Si on se trouve entre 65 et 90, on est sur une majuscule
                array_number_key_number[i] = array_number[i] + key_number  # On ajoute key_number = le nombre de décalage à faire en ASCII
                if array_number_key_number[i] > 90 then # Si on dépasse 90(='Z')
                    array_number_key_number[i] = array_number_key_number[i] - 26  # On recompte à partir de A
                end
            end
        end
    end
    return array_number_key_number.map{|e| e.chr}.join("")

end