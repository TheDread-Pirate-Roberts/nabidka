class AddDateOfBirthToPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_column :players, :age, :integer
    add_column :players, :date_of_birth, :date
  end
end
