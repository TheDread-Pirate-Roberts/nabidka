class Player < ApplicationRecord
  validates :date_of_birth, presence: true
  validates :gender, presence: true
  validates :username, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :claims, dependent: :destroy
  has_many :offers, through: :claims

  def age
    return unless date_of_birth
    ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
  end
end
