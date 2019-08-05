class Team

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach
  end

  def get_name()
    return @name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

end
