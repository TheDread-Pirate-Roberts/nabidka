require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = players(:one)
  end

  test 'valid player' do
    assert @player.valid?
  end

  test 'invalid without date_of_birth' do
    @player.date_of_birth = nil
    assert_not @player.valid?
  end

  test 'invalid without gender' do
    @player.gender = nil
    assert_not @player.valid?
  end

  test 'username should be unique' do
    duplicate_player = @player.dup
    @player.save
    assert_not duplicate_player.valid?
  end

  test 'age calculation' do
    @player.date_of_birth = 20.years.ago
    assert_equal 20, @player.age
  end
end
