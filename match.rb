def string_matcher(str1, str2)
    string1 = str1.split("")
    string2 = str2.split("")
    possible_matches = []

    string1.each_with_index do |letter, index|
        if letter == string2[0]
            possible_match = []
        
            string2.length.times do 
            possible_match << string1[index]
            index += 1
            end 

             possible_matches << possible_match.join("")
        end 
    end 

    return possible_matches.include?(string2.join(""))
end 

p string_matcher("mot01m333moto33333ohohomeooomot0o", "home") == true 
