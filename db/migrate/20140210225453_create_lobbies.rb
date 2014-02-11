class CreateLobbies < ActiveRecord::Migration
  def change
    create_table :lobbies do |t|
      t.integer :team_one_id
      t.integer :team_two_id
      t.integer :game_id
      t.integer :map_id
      t.integer :game_type_id
      t.string :name
      t.string :password
      t.float :wager_amount
      t.integer :team_size

      t.timestamps
    end
  end
end
