require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")

# binding.pry

puts "A ma droite #{player1.name} !"
puts "A ma gauche #{player2.name} !"
puts "-----------------------------------------------------------------------------"


while player1.life_points > 0 && player2.life_points > 0
  puts "-----------------------------------------------------------------------------"
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state

puts "Passons à l'attaque :"
puts ""


  puts player1.attacks(player2)

  if player2.life_points <= 0

    break
  else
    puts player2.attacks(player1)

  end



end


# puts "end of file"
