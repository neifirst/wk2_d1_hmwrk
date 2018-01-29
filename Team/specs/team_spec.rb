require('minitest/rg')
require('minitest/autorun')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_name
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    assert_equal("The Rovers", team.name())
  end


  def test_players
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    assert_equal(["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], team.players())
  end


  def test_coach
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    assert_equal("Ellie", team.coach())
  end


  def test_set_coach
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    team.coach = ("Jean")
    assert_equal("Jean", team.coach())
  end


  def test_add_player
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    assert_equal(["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon", "Kurt Russell"], team.add_player("Kurt Russell"))
  end


  def test_check_player
      team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

      assert_equal(true, team.check_player("Gary Oldman"))
  end


  def test_update_points
    team = Team.new("The Rovers", ["Jeff Bridges", "Harrison Ford", "Keanu Reeves", "Gary Oldman", "Susan Sarandon"], "Ellie", 0)

    assert_equal(1, team.update_points("win"))
  end


end
