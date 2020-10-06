def day_trader(day_array)
    benef_array = [] #Contiendra nos benefs
    benef_array_index = [] #Contiendra les couples de jours
    array_day = [] #Créer les couples de jours

    day_array.length.times do |i| # 1ère boucle : rempli benef_array avec les résultats obtenus dans compare_benef_array
        compare_benef_array = []  # Part à vide à chaque boucle

        (day_array.length - (i + 1)).times do |e|  # 2ème boucle : taille de la boucle précédent moins les valeurs qui ont déjà été comparé
            compare_benef_array[e] = -day_array[i] + day_array[e + i +1] #Calcul du benef entre le jour i et chaque jour suivant
            array_day = [i, e + i + 1] # On récupère l'index pour chaque benef, i = jour de référence, e + i = les autres jours
            benef_array_index << array_day  # On rempli le tableau benef_array_index qui comporte un couple de jours dans chaque case
        end   

        benef_array << compare_benef_array  # On ajoute un à un chaque array de benef pour chaque i(=jour) dans un tableau
    end

    benef_array = benef_array.flatten # On flatten benef_array, pour ne plus avoir de tableaux à l'intérieur

    array_benef_days = benef_array.zip(benef_array_index)  # On lie l'index des couples de jours avec les bénéfices correspondant
    array_max_benef =  array_benef_days.max # On récupère le plus gros benef sa mère
    return array_max_benef[1]  # On affiche le couple de jour correspondant au plus gros benef sa mère
end