require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "---------------------------------------------"
puts ""
puts "|Bienvenue sur 'ILS VEULENT TOUS TA PEAUOO'|"
puts "|Qui sera le dernier survivant ??|"
puts ""
puts "---------------------------------------------"

puts "Entre ton prénom pour rentrer dans l'arène .."
print "> "
user = gets.chomp

user = HumanPlayer.new(user)

ennemi1 = Player.new("José")
ennemi2 = Player.new("Josiane")
ennemis = [ennemi1, ennemi2]

while user.life_points >0 && (ennemi1.life_points > 0 || ennemi2.life_points >0)
  puts "---------------------------------------"
  puts user.show_state

  puts "Quelle action veux-tu effectuer ?"
  puts ""
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts ""
  puts "attaquer un joueur"
  puts "O - #{ennemi1.show_state}"
  puts "1 - #{ennemi2.show_state}"

  print "> "
  user_choice = gets.chomp

  if user_choice == "a"
    puts user.search_weapon

  elsif user_choice == "s"
    puts user.sesearch_health_pack

  elsif user_choice == "0"
    puts user.attacks(ennemi1)
  elsif user_choice == "1"
    puts user.attacks(ennemi2)
  end

  puts "--------------------------"
  puts "LES ENNEMIS ATTAQUENT !!!"

  ennemis.each do |n|
    if n.life_points > 0
      puts n.attacks(user)

    end

  end



  # binding.pry
end

if user.life_points > 0
  puts "Bravo Tu As Gagné !!"
else
  puts "T'es crevé mon gars ..."

end




# binding.pry
