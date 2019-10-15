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

my_game = gets.chomp
my_game = Game.new(my_game)

puts "--------------------------------------"
puts ""
puts "Que le combat commence !!"
# binding.pry


while my_game.show_players_life > 0

  my_game.show_players

  my_game.menu
  my_game.menu_choice
  my_game.ennemis_attack

end

  my_game.end




# binding.pry
