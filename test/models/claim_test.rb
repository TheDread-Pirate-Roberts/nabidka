require 'test_helper'

class ClaimTest < ActiveSupport::TestCase
  def setup
    @claim = claims(:one)
  end

  test 'valid claim' do
    assert @claim.valid?
  end

  test 'invalid without unique player and offer combination' do
    duplicate_claim = @claim.dup
    @claim.save
    assert_not duplicate_claim.valid?
  end
end
