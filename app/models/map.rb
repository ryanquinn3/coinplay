class Map < ActiveRecord::Base
  attr_accessible :game_id, :name

  # Relationships
  belongs_to :games, :foreign_key => "game_id"

  # Validations
  validates_presence_of :game_id, :name
  validates_numericality_of :game_id

end
