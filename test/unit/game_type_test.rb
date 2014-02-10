require 'test_helper'

class GameTypeTest < ActiveSupport::TestCase
  
	# Relationship tests
	should belong_to(:games)
	should have_many(:lobbies)

	# Validation tests
	should validate_presence_of(:game_id)
	should validate_presence_of(:type)

	should validate_numericality_of(:game_id)
	should_not allow_value(nil).for(:game_id)

end
