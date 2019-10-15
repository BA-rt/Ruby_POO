  class Game
    attr_accessor :human_player, :ennemis

    def initialize(human_player)
      @human_player = HumanPlayer.new(human_player)
      @ennemis = [Player.new("ennemi1"), Player.new("ennemi2"), Player.new("ennemi3"), Player.new("ennemi4")]

    end

    def show_players
      @human_player.show_state
      puts "Il reste #{@ennemis.size} ennemis a tuer"

    end

    def show_players_life
      @human_player.get_life_points
      # puts "Tu as #{@life_points} points de vie"

    end

    def kill_player
      k = 0
      @ennemis.each do |n|
        k += 1
      if n.life_points <= 0

        @ennemis.delete(n)

      end
      return k
    end

    end

    def is_still_ongoing?
      if @human_player.life_points > 0 && @ennemis > 0
        return true

      end

    end

    def menu
      puts "Quelle action veux-tu effectuer ?"
      puts ""
      puts "a - chercher une meilleure arme"
      puts "s - chercher à se soigner"
      puts ""
      puts "attaquer un joueur"
      puts "O - #{@ennemis[0].show_state}"
      puts "1 - #{@ennemis[1].show_state}"
      puts "2 - #{@ennemis[2].show_state}"
      puts "3 - #{@ennemis[3].show_state}"
      print "> "

    end

    def menu_choice
      user_choice = gets.chomp

      if user_choice == "a"
        puts @human_player.search_weapon

      elsif user_choice == "s"
        puts @human_player.sesearch_health_pack

      elsif user_choice == "0"
        puts @human_player.attacks(@ennemis[0])
      elsif user_choice == "1"
        puts @human_player.attacks(@ennemis[1])

      elsif user_choice == "2"
        puts @human_player.attacks(@ennemis[2])

      elsif user_choice == "3"
        puts @human_player.attacks(@ennemis[3])


      end

      kill_player

    end

    def ennemis_attack
      ennemis.each do |n|
        if n.life_points > 0
          puts n.attacks(@human_player)

        end
      end

    end

    def end

      if @human_player.life_points > 0
        puts "Bravo Tu As Gagné !!"
      else
        puts "T'es crevé mon gars ..."

      end

    end



  end
