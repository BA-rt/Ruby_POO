class Player

attr_accessor :name, :life_points

def initialize(name)
  @name = name
  @life_points = 10

end

# def show_state
#
#   puts "#{@name} a #{@life_points} points de vie"
#
# end
def show_state
  etat = @name + " a " + @life_points.to_s + " points de vie"
  return etat
end



def gets_damage(damage)

  @life_points = @life_points - damage
  if @life_points <= 0

    puts "Le joueur #{@name} a été tué"

  end

end

def compute_damage
  return rand(1..6)
end

def attacks(name)
  puts "#{@name} attaque #{name.name}"

  attack_damage = compute_damage
  puts "Il lui inflige #{attack_damage} points de dommages"
  name.gets_damage(attack_damage)

end

end


class HumanPlayer < Player

attr_accessor :weapon_level

def initialize(name)

  super(name)

  @life_points = 100
  @weapon_level = 1


end

def show_state
  puts "#{@name} a #{@life_points} point de vie et une arme de niveau #{@weapon_level}"

end

def get_life_points

  return @life_points

end

def compute_damage
  rand(1..6) * @weapon_level

end

def search_weapon
  result = rand(1..6)
  puts "Tu as trouvé une arme de niveau #{result}"

  if result > @weapon_level
    @weapon_level = result

  else

    puts "C'est de la merde"

  end
end

def search_health_pack

  result = rand(1..6)
  if result == 1
    puts "Tu n'as rien trouvé..."

  elsif result >= 2 && result <= 5
    @life_points = @life_points + 50
    puts "Mashallah le pack de 50 Pvs !!"

  else
    @life_points = @life_points + 80
    puts "Hééééééééé lalalala 80 Pvs !!!"

  end

end


end
