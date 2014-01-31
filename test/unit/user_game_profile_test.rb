require 'test_helper'

class UserGameProfileTest < ActiveSupport::TestCase

	# Relationship tests
	should belong_to(:users)
	should belong_to(:games)

end
