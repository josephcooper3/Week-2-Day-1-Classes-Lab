require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup

    @team = Team.new("Scotland", ["Jonny", "Steve", "Robbie", "Davie", "Jan"], "Reginald")

  end

  def test_get_name
    assert_equal("Scotland", @team.get_name())
  end

  def test_get_players
    assert_equal(["Jonny", "Steve", "Robbie", "Davie", "Jan"], @team.get_players())
  end

  def test_get_coach
    assert_equal("Reginald", @team.get_coach())
  end

  def test_set_coach
    @team.set_coach("Sir Alex")
    assert_equal("Sir Alex", @team.get_coach())
  end

end
