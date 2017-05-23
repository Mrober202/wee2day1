class SportsTeam

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach_name()
    return @coach
  end

  def get_points()
    return @points
  end

  def set_coach_name(name)
    @coach = name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_search(name)
    for player in @players
      if(player == name)
        return true
      end
    end
    return false
  end

  def team_win(result)
    if result == "win"
      @points += 1
    end
  end

end