class Team

  attr_reader :name
  attr_accessor :players, :coach

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_if_player_is_in_team(player_to_check)
    for player in @players
      return true if player == player_to_check
    end
    return false
  end

end
