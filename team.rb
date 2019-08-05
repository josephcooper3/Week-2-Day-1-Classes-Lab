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

end
