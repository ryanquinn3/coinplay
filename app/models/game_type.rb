class GameType < ActiveRecord::Base
  attr_accessible :game_id, :type

  # Relationships
  belongs_to :games, :foreign_key => "game_id"

  # Validations
  validates_presence_of :game_id, :type
  validates_numericality_of :game_id

end
