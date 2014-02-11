class Lobby < ActiveRecord::Base
  attr_accessible :game_id, :game_type_id, :map_id, :name, :password, :team_one_id, :team_two_id, :team_size, :wager_amount

  # Relationships
  belongs_to :games, :foreign_key => "game_id"
  belongs_to :maps, :foreign_key => "map_id"
  belongs_to :game_types, :foreign_key => "game_type_id"

  # Validations
  validates_presence_of :team_one_id, :team_two_id, :game_id, :map_id, :game_type_id
  validates_presence_of :team_size, :wager_amount
  validates_numericality_of :team_one_id, :team_two_id, :game_id, :map_id, :game_type_id
  validates_numericality_of :wager_amount, :greater_than_or_equal_to => 0.001, :less_than_or_equal_to => 1

  # NEED MORE VALIDATIONS?

end
