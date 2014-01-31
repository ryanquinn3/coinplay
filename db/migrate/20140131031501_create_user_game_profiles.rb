class CreateUserGameProfiles < ActiveRecord::Migration
  def change
    create_table :user_game_profiles do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :username
      t.integer :username_id
      t.boolean :verified
      t.integer :region
      t.integer :league
      t.integer :rank
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
