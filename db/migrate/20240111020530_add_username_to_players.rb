class AddUsernameToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :username, :string
    add_index :players, :username, unique: true
  end
end
