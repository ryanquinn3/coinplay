class Lobby < ActiveRecord::Base
  attr_accessible :game_id, :game_type_id, :map_id, :name, :password, :team_one_id, :team_two_id, :team_size, :wager_amount

  # Relationships
  belongs_to :games, :foreign_key => "game_id"
  belongs_to :maps, :foreign_key => "map_id"
  belongs_to :game_types, :foreign_key => "game_type_id"

end
