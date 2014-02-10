require 'test_helper'

class LobbyTest < ActiveSupport::TestCase

	# Relationship tests
	should belong_to(:maps)
	should belong_to(:game_types)
	should belong_to(:games)

end
