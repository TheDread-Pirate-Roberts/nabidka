class OffersController < ApplicationController
  before_action :authenticate_player!

  def index
    @offers = Offer.where.not(id: current_player.claims.select(:offer_id))
    .where(target_gender: current_player.gender)
    .where('target_age @> ?', current_player.age)

    @claimed_offers = Offer.where(id: current_player.claims.select(:offer_id))
  end
end
