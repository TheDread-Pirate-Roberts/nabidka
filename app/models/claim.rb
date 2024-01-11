class Claim < ApplicationRecord
  belongs_to :player
  belongs_to :offer

  # Taking a guess this is desired behavior. Ensures a player can't claim the same offer more than once
  validates :player_id, uniqueness: { scope: :offer_id }
end
