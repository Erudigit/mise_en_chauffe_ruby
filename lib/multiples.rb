def is_multiple_of_3_or_5?(current_number)
    if current_number%3 == 0 || current_number%5 == 0 then
        return true
    else
        return false
    end
end

def sum_of_3_or_5_multiples?(final_number)
    sum_of_number_3_5 = 0 

    if (final_number.is_a? Integer) && (final_number >= 0) then
        final_number.times do |i|
            if is_multiple_of_3_or_5?(i) == true then
                sum_of_number_3_5 = sum_of_number_3_5 + i
            end
        end
        return sum_of_number_3_5
    else
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end
end

