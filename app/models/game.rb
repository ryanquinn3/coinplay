class Game < ActiveRecord::Base
  attr_accessible :api_url, :name

  # Relationships
  has_many :user_game_profiles
  has_many :users, :through => :user_game_profiles

end
