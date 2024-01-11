class ChangeTargetAgeToRangeInOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :offers, :target_age, :integer
    add_column :offers, :target_age, :int4range
  end
end
