class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(input_name, input_players, input_coach, input_points)

    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = input_points

  end


  def add_player(player)

    @players << player

  end


  def check_player(player)

    for anyone in @players
      if anyone == player
        return true
      end
    end

  end


  def update_points(result)

    if result == "win"
      @points += 1
    end
    
  end


end
