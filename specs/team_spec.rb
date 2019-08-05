require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup

    @team = Team.new("Scotland", ["Jonny", "Steve", "Robbie", "Davie", "Jan"], "Reginald")

  end

  def test_get_name
    assert_equal("Scotland", @team.name())
  end

  def test_get_players
    assert_equal(["Jonny", "Steve", "Robbie", "Davie", "Jan"], @team.players())
  end

  def test_get_coach
    assert_equal("Reginald", @team.coach())
  end

  def test_set_coach
    @team.coach = "Sir Alex"
    assert_equal("Sir Alex", @team.coach())
  end

end
