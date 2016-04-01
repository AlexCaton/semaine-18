text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

=begin
* Créer un hash pour stocker les mots
* Obtenir un tableau des mots de notre text (split())
* Itérer sur le tableau précédent
  * Remplir le hash
* Afficher les informations

** Organiser les mots pour sortir les mots les plus fréquent
=end

motsHash = Hash.new(0)
mots = text.tr('.,":', '').downcase.split(' ')
mots.each do |mot|
    motsHash[mot] += 1
end

motsHash = motsHash.sort_by { |mot, count| count}
motsHash.reverse!
first = motsHash.first

puts "Le mot qui apparait le plus souvent est : \"#{first[0]}\" qui apparait #{first[1]} fois"
