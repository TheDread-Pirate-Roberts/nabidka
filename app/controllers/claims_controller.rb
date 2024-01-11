class ClaimsController < ApplicationController
  def create
    @claim = current_player.claims.build(claim_params)
    if @claim.save
      redirect_to offers_path, notice: 'Offer claimed successfully!'
    else
      redirect_to offers_path, alert: 'Could not claim the offer.'
    end
  end

  private

  def claim_params
    params.require(:claim).permit(:offer_id)
  end
end
