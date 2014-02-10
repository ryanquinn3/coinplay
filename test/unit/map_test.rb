require 'test_helper'

class MapTest < ActiveSupport::TestCase

	# Relationship tests
	should belong_to(:games)

	# Validation tests
	should validate_presence_of(:game_id)
	should validate_presence_of(:name)

	should validate_numericality_of(:game_id)
	should_not allow_value(nil).for(:game_id)

end
