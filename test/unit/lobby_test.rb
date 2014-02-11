require 'test_helper'

class LobbyTest < ActiveSupport::TestCase

	# Relationship tests
	should belong_to(:maps)
	should belong_to(:game_types)
	should belong_to(:games)

	# Validation tests
	should validate_presence_of(:team_one_id)
	should validate_presence_of(:team_two_id)
	should validate_presence_of(:game_id)
	should validate_presence_of(:map_id)
	should validate_presence_of(:game_type_id)

	should validate_presence_of(:team_size)
	should validate_presence_of(:wager_amount)

	should validate_numericality_of(:team_one_id)
	should validate_numericality_of(:team_two_id)
	should validate_numericality_of(:game_id)
	should validate_numericality_of(:map_id)
	should validate_numericality_of(:game_type_id)
	should_not allow_value(nil).for(:team_one_id)
	should_not allow_value(nil).for(:team_two_id)
	should_not allow_value(nil).for(:game_id)
	should_not allow_value(nil).for(:map_id)
	should_not allow_value(nil).for(:game_type_id)

	should validate_numericality_of(:wager_amount)
	should allow_value(0.001).for(:wager_amount)
	should allow_value(1).for(:wager_amount)
	should allow_value(0.5).for(:wager_amount)
	should allow_value(0.005).for(:wager_amount)
	should_not allow_value(nil).for(:wager_amount)
	should_not allow_value(1.001).for(:wager_amount)
	should_not allow_value(5).for(:wager_amount)
	should_not allow_value(0.0001).for(:wager_amount)

end
