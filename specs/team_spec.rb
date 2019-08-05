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

  def test_add_new_player
    assert_equal(["Jonny", "Steve", "Robbie", "Davie", "Jan", "Mungo"], @team.add_new_player("Mungo"))
  end

  def test_check_if_player_is_in_team__player_found
    assert_equal(true, @team.check_if_player_is_in_team("Jan"))
  end

  def test_check_if_player_is_in_team__player_not_found
    assert_equal(false, @team.check_if_player_is_in_team("Donald"))
  end

  def test_get_points
    assert_equal(0, @team.points())
  end

  def test_update_points__win
    @team.update_points("win")
    assert_equal(3, @team.points())
  end

  def test_update_points__draw
    @team.update_points("draw")
    assert_equal(1, @team.points())
  end

end
