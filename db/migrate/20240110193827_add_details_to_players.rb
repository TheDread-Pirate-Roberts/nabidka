class AddDetailsToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :age, :integer
    add_column :players, :gender, :string
  end
end
