require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'sports_team')

class TestSportsTeam < Minitest::Test

  def setup()
    @super_team = SportsTeam.new("The Best Team", ["Big Davie", "Wee Tam", "Dougie the animal"], "Gordon Strachan")
  end

  def test_get_team_name()
    assert_equal("The Best Team", @super_team.get_team_name())
  end 

  def test_get_players()
    assert_equal(["Big Davie", "Wee Tam", "Dougie the animal"], @super_team.get_players())
  end

  def test_get_coach_name()
    assert_equal("Gordon Strachan", @super_team.get_coach_name())
  end

  def test_get_points()
    assert_equal(0, @super_team.get_points())
  end

  def test_set_coach_name()
    @super_team.set_coach_name("Alex Ferguson")
    assert_equal("Alex Ferguson", @super_team.get_coach_name())
  end

  def test_add_player
    @super_team.add_player("Brido")
    assert_equal(4, @super_team.get_players().count)
  end

  def test_if_player_is_there__return_true()
    result = @super_team.player_search("Big Davie")
    assert_equal(true, result)
  end

  def test_if_player_is_there__return_false()
    result = @super_team.player_search("Dave")
    assert_equal(false, result)
  end

  def test_team_win()
    @super_team.team_win("win")
    assert_equal(1, @super_team.get_points())
  end


end