class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.float :bitcoin_balance, :default => 0
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
