class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.text :description
      t.string :target_gender
      t.integer :target_age

      t.timestamps
    end
  end
end
